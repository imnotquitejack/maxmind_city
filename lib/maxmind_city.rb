require "maxmind_city/version"
require 'httparty'

class MaxmindCity
  include HTTParty
  base_uri 'http://geoip3.maxmind.com'

  @@license_key = nil

  def self.license_key=( new_license_key )
    @@license_key = new_license_key
  end

  def self.lookup( ip )
    self.parse_response(
      self.get("/b", :query => {:l => @@license_key, :i => ip})
    )
  end

  def self.parse_response( response )
    {
      :country_code => response.split(",")[0],
      :region_code => response.split(",")[1],
      :city => response.split(",")[2],
      :latitude => response.split(",")[3],
      :longitude => response.split(",")[4]
    }
  end
end
