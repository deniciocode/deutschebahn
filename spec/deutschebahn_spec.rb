require 'spec_helper'
require 'deutschebahn/station'
require 'json'

describe Deutschebahn do
  let(:data) { File.read('spec/fixures/stations.json') }
  let(:data_as_json) { JSON.parse File.read('spec/fixures/stations.json') }
  let(:deutschebahn) { Deutschebahn.new }

  before do
    allow(Deutschebahn).to receive(:fetch_data) { data }
  end

  it 'has a version number' do
    expect(Deutschebahn::VERSION).not_to be nil
  end

  it 'fetches the data' do
    expect(Deutschebahn.fetch_data).to eq data
  end

  context 'stations' do
    it 'returns an array of stations' do
      expect(Deutschebahn.stations).to be_a Array
    end

    it 'includes stations classes' do
      expect(Deutschebahn.stations.first).to be_a Deutschebahn::Station
    end

    it 'has same count as given data' do
      expect(Deutschebahn.stations.count).to eq data_as_json.count
    end
  end
end
