# An easy to use/install and run SAML Identity Provider server in Ruby on Rails 6

If you want to read more SAML and SSO, you can take a look at this tech spec
https://gist.github.com/heridev/25f842d1e5b87870d987ee128f9dbee2

## How to use this server right away:
1. git clone git@github.com:heridev/saml_identity_provider_rails.git
2. cd saml_identity_provider_rails
3. bundle install
4. rake db:create
5. rake db:migrate
6. rails s -b 'ssl://localhost:3030?key=newCertWithPasswordLocahostKey.key&cert=newCertWithPasswordLocahostCert.crt'

Now, you need to visit this url and register a new account:
https://localhost:3030/users/sign_up

This Identity Provider server and this example is based on the workflow called:
*Service provider initiated flow*

Once you run both servers including the Service Provider rails server:
https://github.com/heridev/saml_service_provider_in_rails

You can visit the service provider url and request a private resource:
```
https://localhost:3000/users/saml/sign_in
```

If you follow both repository instructions after requesting that url, you should see something like this in the Identity provider:
![image](https://user-images.githubusercontent.com/1863670/81246056-356af300-8fdc-11ea-9534-24a8f7cbd362.png)

And something like this in the Service Provider
![image](https://user-images.githubusercontent.com/1863670/81246621-b24a9c80-8fdd-11ea-8b84-dc1cffae0ac7.png)

So, now you can easily include that url in an iframe in your site and render widgets from the Service Provider:
```
<iframe width="560"
				height="315"
				src="https://localhost:3000/users/saml/sign_in"
				frameborder="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen>
</iframe>
```

I will called this Service Provider guided by a url, in this example, I'm returning some html by default, but you can ask as many widgets and sections as you need you only need to work on the 
```ruby
app/controllers/saml/decorated_saml_sessions_controller.rb#new
```

Method and make that url dynamic to accept a page_name and then just confirm with your Identity Provider that they include those parameters back in
```ruby
app/controllers/saml_idp_controller.rb
```

in this section as an example
```ruby
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
end
```

## About certificates and OPENSSL

NOTE: As we don't want to get errors with OpenSSL, we are running it with https and then in Chrome we can ignore that warning and proceed with the access to localhost

I created those certificates using the following command:
```
openssl req -x509 -sha256 -nodes -days 3650 -passout pass:foobar -newkey rsa:2048 -keyout newCertWithPasswordLocahostKey.key -out newCertWithPasswordLocahostCert.crt
```

The passphrase is:
```
foobar
```

That's it, hope you find this useful.
H.
