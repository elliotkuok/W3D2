class Card
    attr_reader :face_value
    def initialize(face_value)
       @face_value =  face_value
       @face_up = false
    end

    def hide
        @face_up = false
    end
    
    def reveal
        @face_up = true
    end

    def to_s
        @face_up ?  @face_value.to_s : " "
    end

    def ==(other_card)
        @face_value == other_card.face_value
    end


end