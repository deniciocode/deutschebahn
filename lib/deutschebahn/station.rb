module Deutschebahn
  class Station
    def initialize(hash)
      @hash = hash
    end

    def local_distance_traffic?
      @hash[:nahverkehr]
    end

    def long_distance_traffic?
      @hash[:fernverkehr]
    end

    def name
      @hash[:station]
    end

    def state
      @hash[:bundesland]
    end

    def management
      @hash[:bm]
    end

    def place
      @hash[:ort]
    end

    def street
      @hash[:strasse]
    end

    def transport_association
      @hash[:verkehrsVerb]
    end

    def stops
      @hash[:bfDsAbk]
    end

    def supporter
      @hash[:aufgabentraeger]
    end

    def zipcode
      @hash[:plz]
    end

    def number
      @hash[:bfNr]
    end

    def category
      @hash[:katVst]
    end
  end
end
