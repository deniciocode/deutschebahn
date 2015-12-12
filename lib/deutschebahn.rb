require "deutschebahn/version"
require "deutschebahn/station"
require 'httparty'
require 'json'
require 'uri'

module Deutschebahn
  def self.fetch_data
    @response ||= HTTParty.get('http://54.93.120.139/api/station/')
    @response
  end

  def self.stations
    stations = []
    fetch_data.each do |json_obj|
      hash = json_obj.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
      stations << Station.new(hash)
    end
    stations
  end
end
