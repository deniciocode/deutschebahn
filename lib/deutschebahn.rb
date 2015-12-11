require "deutschebahn/version"
require 'json'

module Deutschebahn
  def fetch_data
  end

  def self.stations
    stations = []
    JSON.parse(fetch_data).each do |json_obj|
      hash = json_obj.inject({}){|memo,(k,v)| memo[k.to_sym] = v; memo}
      stations << Station.new(hash)
    end
    stations
  end
end
