require 'spec_helper'
require 'deutschebahn/station'

describe Deutschebahn::Station do
  let(:data_hash) do
    {
      :_id=>"566af53f271da51420e9c385",
      :bfNr=>119,
      :bundesland=>"Hessen",
      :bm=>"Darmstadt",
      :station=>"Altheim (Hess)",
      :bfDsAbk=>"FAT",
      :katVst=>6,
      :strasse=>"Münstererstr. 19",
      :plz=>64839,
      :ort=>"Münster",
      :aufgabentraeger=>"Rhein-Main-Verkehrsverbund GmbH",
      :verkehrsVerb=>"RMV",
      :fernverkehr=>true,
      :nahverkehr=>true,
      :__v=>0
    }
  end

  let(:station) { Deutschebahn::Station.new(data_hash) }

  context 'hash given' do
    it 'creates an object' do
      expect(station).to be_a Deutschebahn::Station
    end
  end

  context 'method calls' do
    it 'returns stops' do
      expect(station.stops).to eq data_hash[:bfDsAbk]
    end

    it 'returns state' do
      expect(station.state).to eq data_hash[:bundesland]
    end

    it 'returns transport_association' do
      expect(station.transport_association).to eq data_hash[:verkehrsVerb]
    end

    it 'returns supporter' do
      expect(station.supporter).to eq data_hash[:aufgabentraeger]
    end

    it 'returns place' do
      expect(station.place).to eq data_hash[:ort]
    end

    it 'returns zipcode' do
      expect(station.zipcode).to eq data_hash[:plz]
    end

    it 'returns street' do
      expect(station.street).to eq data_hash[:strasse]
    end

    it 'returns category' do
      expect(station.category).to eq data_hash[:katVst]
    end

    it 'returns local_distance_traffic?' do
      expect(station.local_distance_traffic?).to eq data_hash[:nahverkehr]
    end

    it 'returns long_distance_traffic?' do
      expect(station.long_distance_traffic?).to eq data_hash[:nahverkehr]
    end

    it 'returns name' do
      expect(station.name).to eq data_hash[:station]
    end

    it 'returns management' do
      expect(station.management).to eq data_hash[:bm]
    end

    it 'returns number' do
      expect(station.number).to eq data_hash[:bfNr]
    end
  end
end
