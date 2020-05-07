class SamlIdpController < SamlIdp::IdpController

  before_action :authenticate_user!

  # We come here by the redirection from the Service Provider
  # including the SAMLRequest
  # https://my_current_url.com/idp/saml/auth?SAMLRequest=hVNNj9MwEP0ruf...
  def new
    if current_user.blank?
      @html_content = '<h1>You need to log-in first</h1>'
    else
      http_response = make_http_to_get_resources_from_sp
      if http_response.code == '200'
        @html_content = http_response.body
      else
        @html_content = '<h1>There was an error when trying to render this resource, please reload this page</h1>'
      end
    end

    respond_to do |format|
      format.html { render :new, layout: 'widgets' }
    end
  end

  def development_or_test_env?
    Rails.env.test? || Rails.env.development?
  end

  def make_http_to_get_resources_from_sp
    saml_response = idp_make_saml_response
    data = {
      SAMLResponse: saml_response,
      # this one was received from the Service
      # Provider just in case we need to render
      # a dynamic section/widget
      page_name: params[:page_name]
    }
    uri = URI.parse(saml_acs_url)
    http = Net::HTTP.new(uri.host, uri.port)

    # Disabling the error - certificate verify failed
    if development_or_test_env?
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
    end

    http.use_ssl = true
    http_request = Net::HTTP::Post.new(
      uri.request_uri,
      'Content-Type' => 'application/json'
    )

    http_request.body = data.to_json
    http_response = http.request(http_request)
    http_response
  end

  private

  def idp_make_saml_response
    encryption_values = {
      cert: SamlIdp.config.x509_certificate,
      block_encryption: 'aes256-cbc',
      key_transport: 'rsa-oaep-mgf1p'
    }
    encode_response current_user, encryption_values
  end

  def idp_logout
    puts '============= IPD user logout needs to be implemented ============================'
  end

end
