# -*- encoding: utf-8 -*-
# stub: mongo 1.9.0 ruby lib

Gem::Specification.new do |s|
  s.name = "mongo"
  s.version = "1.9.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Tyler Brock", "Gary Murakami", "Emily Stolfo", "Brandon Black", "Durran Jordan"]
  s.cert_chain = ["-----BEGIN CERTIFICATE-----\nMIIDODCCAiCgAwIBAgIBADANBgkqhkiG9w0BAQUFADBCMRQwEgYDVQQDDAtkcml2\nZXItcnVieTEVMBMGCgmSJomT8ixkARkWBTEwZ2VuMRMwEQYKCZImiZPyLGQBGRYD\nY29tMB4XDTEzMDIwMTE0MTEzN1oXDTE0MDIwMTE0MTEzN1owQjEUMBIGA1UEAwwL\nZHJpdmVyLXJ1YnkxFTATBgoJkiaJk/IsZAEZFgUxMGdlbjETMBEGCgmSJomT8ixk\nARkWA2NvbTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBANFdSAa8fRm1\nbAM9za6Z0fAH4g02bqM1NGnw8zJQrE/PFrFfY6IFCT2AsLfOwr1maVm7iU1+kdVI\nIQ+iI/9+E+ArJ+rbGV3dDPQ+SLl3mLT+vXjfjcxMqI2IW6UuVtt2U3Rxd4QU0kdT\nJxmcPYs5fDN6BgYc6XXgUjy3m+Kwha2pGctdciUOwEfOZ4RmNRlEZKCMLRHdFP8j\n4WTnJSGfXDiuoXICJb5yOPOZPuaapPSNXp93QkUdsqdKC32I+KMpKKYGBQ6yisfA\n5MyVPPCzLR1lP5qXVGJPnOqUAkvEUfCahg7EP9tI20qxiXrR6TSEraYhIFXL0EGY\nu8KAcPHm5KkCAwEAAaM5MDcwCQYDVR0TBAIwADAdBgNVHQ4EFgQUW3dZsX70mlSM\nCiPrZxAGA1vwfNcwCwYDVR0PBAQDAgSwMA0GCSqGSIb3DQEBBQUAA4IBAQCIa/Y6\nxS7YWBxkn9WP0EMnJ3pY9vef9DTmLSi/2jz8PzwlKQ89zNTrqSUD8LoQZmBqCJBt\ndKSQ/RUnaHJuxh8HWvWubP8EBYTuf+I1DFnRv648IF3MR1tCQumVL0XcYMvZcxBj\na/p+8DomWTQqUdNbNoGywwjtVBWfDdwFV8Po1XcN/AtpILOJQd9J77INIGGCHxZo\n6SOHHaNknlE9H0w6q0SVxZKZI8/+2c447V0NrHIw1Qhe0tAGJ9V1u3ky8gyxe0SM\n8v7zLF2XliYbfurYIwkcXs8yPn8ggApBIy9bX6VJxRs/l2+UvqzaHIFaFy/F8/GP\nRNTuXsVG5NDACo7Q\n-----END CERTIFICATE-----\n"]
  s.date = "2013-06-11"
  s.description = "A Ruby driver for MongoDB. For more information about Mongo, see http://www.mongodb.org."
  s.email = "mongodb-dev@googlegroups.com"
  s.executables = ["mongo_console"]
  s.files = ["bin/mongo_console"]
  s.homepage = "http://www.mongodb.org"
  s.licenses = ["Apache License Version 2.0"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "mongo"
  s.rubygems_version = "2.1.5"
  s.summary = "Ruby driver for MongoDB"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<bson>, ["~> 1.9.0"])
    else
      s.add_dependency(%q<bson>, ["~> 1.9.0"])
    end
  else
    s.add_dependency(%q<bson>, ["~> 1.9.0"])
  end
end
