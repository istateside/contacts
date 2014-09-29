require 'json'
require 'addressable/uri'
require 'rest-client'

def update_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1'
  ).to_s

  # puts RestClient.post(
  #   url,
  #   { user: { name: "Gizmo", email: "gizmo@gizmo.gizmo"} }
  # )
  #
  # puts RestClient.post(url,
  #   { user: { name: "Hank", email: "hank@minerals.com" } }
  # )

  puts RestClient.patch(url, {user: {email: "meth@meth.org"} })

end

def destroy_user
  url = Addressable::URI.new(
    scheme: 'http',
    host: 'localhost',
    port: 3000,
    path: '/users/1'
  ).to_s

  puts RestClient.delete(url)
end

destroy_user