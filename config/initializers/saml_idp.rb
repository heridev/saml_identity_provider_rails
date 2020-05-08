SamlIdp.configure do |config|
  config.x509_certificate = <<-CERT
-----BEGIN CERTIFICATE-----
MIIDzDCCArQCCQDiO+F7vjqskzANBgkqhkiG9w0BAQsFADCBpzELMAkGA1UEBhMC
VVMxETAPBgNVBAgMCE5ldyBZb3JrMREwDwYDVQQHDAhOZXcgWW9yazEZMBcGA1UE
CgwQR2Vub2EgSGVhbHRoY2FyZTEZMBcGA1UECwwQR2Vub2EgSGVhbHRoY2FyZTEj
MCEGA1UEAwwaR2Vub2EgSGVhbHRoY2FyZSBsb2NhbGhvc3QxFzAVBgkqhkiG9w0B
CQEWCHBAZWxoLm14MB4XDTIwMDUwNDE5MDgyMloXDTMwMDUwMjE5MDgyMlowgacx
CzAJBgNVBAYTAlVTMREwDwYDVQQIDAhOZXcgWW9yazERMA8GA1UEBwwITmV3IFlv
cmsxGTAXBgNVBAoMEEdlbm9hIEhlYWx0aGNhcmUxGTAXBgNVBAsMEEdlbm9hIEhl
YWx0aGNhcmUxIzAhBgNVBAMMGkdlbm9hIEhlYWx0aGNhcmUgbG9jYWxob3N0MRcw
FQYJKoZIhvcNAQkBFghwQGVsaC5teDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCC
AQoCggEBAOHz0yGw8GOXVMg+JeLL/Ovys/+xfSsFq0D2Gv80oWbcFJIml7C3kOpl
FbPn2m/Md8L766xLYB801qhWWW1WR/jHmofx+Zz99x8VXBjr8Cvpa89t/t8LPg5U
P05PZxcehP/Ts71+hOtR+8Oux5xwi4tpY57XG1I8TXw9NEeAJgCC5AJVHLK9l8A5
7kpLCGViuyKKxhm5BRfuQ0rkpccSPgOq041K6mWMverAD+Ot1t2oSxNb9rLqIxRh
oJMmYcsskc5iaT1+CPxIdC0Va4BoM9mxtsNjbWQWyCd9HDQcALwzMQkv3O8oM+hm
KPf0rg8CI2pQ6TR6Ffwn7bxEhRsOwtUCAwEAATANBgkqhkiG9w0BAQsFAAOCAQEA
MRAQMcq0mQ2fELUo1AxL0bjdljk9zBcv1Wpj1u5JyfJCCAaqX4TnMml8cvvTOlxW
Xu46hXdaxpmD2Lwhr5fwtqvpib8bxmHzXRYt/i//oT8doimOQEDRkWncsQ2eQ3Zm
g9zGeyT+m1wd8n1hHgVzOwl9kSIsFfjn+qlrfKkZVgRtniU9To/553YTp1aNlFAs
2iihxM00LuL9O5LL8x6DZwxozrnmyTcaqtyxgriuK55tDb4WGbE2W9Wgf/s+JrpI
LbmJ9v4ifXy8LhzKpuH2kHDPS9Y0qxzFywvtNhtvrBABS3t04ZxIxwbb4xmZmEDj
PIfbKr4kO0Vr5YQ7g2YMeg==
-----END CERTIFICATE-----
  CERT

  config.secret_key = <<-CERT
-----BEGIN PRIVATE KEY-----
MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDh89MhsPBjl1TI
PiXiy/zr8rP/sX0rBatA9hr/NKFm3BSSJpewt5DqZRWz59pvzHfC++usS2AfNNao
VlltVkf4x5qH8fmc/fcfFVwY6/Ar6WvPbf7fCz4OVD9OT2cXHoT/07O9foTrUfvD
rseccIuLaWOe1xtSPE18PTRHgCYAguQCVRyyvZfAOe5KSwhlYrsiisYZuQUX7kNK
5KXHEj4DqtONSupljL3qwA/jrdbdqEsTW/ay6iMUYaCTJmHLLJHOYmk9fgj8SHQt
FWuAaDPZsbbDY21kFsgnfRw0HAC8MzEJL9zvKDPoZij39K4PAiNqUOk0ehX8J+28
RIUbDsLVAgMBAAECggEAXIJHXvPid+Ptgk5vlHuQAcpMh9NTO9oGU4Jvay1RJ5vT
kELcuC1v14erawzyEfPU1K/vvYrev+gSOrmfw3Qf42tViXM4j14rXz6PhmSS4Geh
DDwsrYUc0yELCjTYME7+hP9YB61VHkNioKtebl5lw55SeyX2uaSW1Nb6IIwHAw3O
8mOyYoGjrFnmQNVdp57QQLYNuYIDCdCVPZjAEsGnoje9x6cMXqX+O5tW9eBTFkcb
JCKTyuY86+x1l4SzHCnAGuV6xND/XBRYZQsLNpwcOigTomySJQYKR73VKOssZTIK
H5qYsSCZpTat0XMwF7vF9DOu/1pUw7c0r+p+Kn/FwQKBgQD1QY2eppwrfqvgSzh/
qTIa2oKd8t/51Z10X/LJgdHSgVn+1KoYu+JvBIid/wZ9idca7ms/77JgWoM9bXul
1CwfaLvp12OJIo80pVwDDgHmKQAbbJVrRq8FePaT1C18gzAvZv1kCPhbo0xgCgIm
o5dC8RPAaXA9S35b+5sLl3fOcwKBgQDr2coKvBoJWxI6UO++WGNidhK0cc2gvybW
akbpIuNa1TZsAbQD1Nf7OtkUnDn2pnVG72FzAisECohty4DORmla/yqkPiYPrZJH
YOrdhDCx7H4vAe1pSx+P3oizDaX0kntNysIKRCIA0f8xuZPeewcQQR+Dl89+VnuK
W3XlZHfPlwKBgQDJ3k4qEusiZd4k/OUhNuvV7JtsVLgEVM6INl2JfQBuqyefN/5V
43gqdunYWkxGUomqUioW8z24T2gMzKvkv7IdnEBn5nC4NKj45U7J+OKZRpAfAo4u
QXzYHUugPBnAjd7AdZ4Fk9iQ3OWFe1dv5GEhqXrfein3WcdFAOEKdn8XfwKBgHoF
xP2G0mWyw5x+UXuGmWzQr97B3mRjYYGfnK50CXLuSujYfL1aup/Vk4iRR3/wIU8g
/KcXIRBHLsy3dB3E2i9lQzeUm/aSk9LwNrOC9/ql46cIdT97yYmS1eDll84Ql1Dp
LTlIhNstyr18SR/bQQ1M1DQuMAEqV2J+7WFQeJhjAoGBAN3dHjWdhSq/REe/22DG
Pn4yTXrFLSjRQE8zOLf7YWqklCzbA2EDpPxYzbqfVZFRNszjDw95367cwsrreHex
nCeG5awFM5VKjQyd4r7cXf6U8v/6a9b/rnLiquGUleEfLfncCixTUKeMcGbTnajI
jPVIhctMaNCEhdlcNBgh0r/U
-----END PRIVATE KEY-----
  CERT

  base = 'http://localhost:3030'
  config.password = 'foobar'

  config.name_id.formats = {
      persistent: -> (principal) do
        User.find_by(id: principal.id).id
      end
    }

  config.attributes = {
    'Email address' => {
      'name' => 'email',
      'name_format' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:basic',
      'getter' => ->(principal) {
        principal.email
      },
    },
    'Full name' => {
      'name' => 'name',
      'name_format' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:basic',
      'getter' => ->(principal) {
        principal.name
      }
    },
    'Role name' => {
      'name' => 'role',
      'name_format' => 'urn:oasis:names:tc:SAML:2.0:attrname-format:basic',
      'getter' => ->(principal) {
        principal.role
      }
    }
  }

 # `identifier` is the entity_id or issuer of the Service Provider,
  # settings is an IncomingMetadata object which has a to_h method that needs to be persisted
  config.service_provider.metadata_persister = ->(identifier, settings) {
    fname = identifier.to_s.gsub(/\/|:/,'_')
    `mkdir -p #{Rails.root.join('cache/saml/metadata')}`
    File.open Rails.root.join('cache/saml/metadata/#{fname}'), 'r+b' do |f|
      Marshal.dump settings.to_h, f
    end
  }

  # `identifier` is the entity_id or issuer of the Service Provider,
  # `service_provider` is a ServiceProvider object. Based on the `identifier` or the
  # `service_provider` you should return the settings.to_h from above
  config.service_provider.persisted_metadata_getter = ->(identifier, service_provider){
    fname = identifier.to_s.gsub(/\/|:/,'_')
    `mkdir -p #{Rails.root.join('cache/saml/metadata')}`
    full_filename = Rails.root.join('cache/saml/metadata/#{fname}')
    if File.file?(full_filename)
      File.open full_filename, 'rb' do |f|
        Marshal.load f
      end
    end
  }

  sp_metadata_url = ENV['PROVIDER_METADATA_URL'] || 'https://localhost:3030/sp/saml/metadata'
  idp_cert_fingerprint = ENV['IDP_CERT_FINGERPRINT'] || 'E4:FC:60:40:03:A2:33:9D:AA:9D:50:59:F2:04:F0:3C:88:62:3B:F1:EB:D8:4C:FF:9C:D1:93:07:03:F7:C9:74'
  sp_saml_auth = ENV['SP_SSO_AUTH_TARGET_URL'] || 'https://localhost:3030/sp/saml/auth'

  service_provider_list = {
    sp_metadata_url => {
      fingerprint: idp_cert_fingerprint,
      metadata_url: sp_metadata_url,
      response_hosts: [sp_saml_auth]
    }
  }

  # Find ServiceProvider metadata_url and fingerprint based on our settings
  config.service_provider.finder = ->(issuer_or_entity_id) do
    service_provider_list[issuer_or_entity_id]
  end

end
