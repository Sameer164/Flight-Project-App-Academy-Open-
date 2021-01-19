class Flight
    def initialize(flight_num, capacity)
        @flight_number = flight_num
        @capacity = capacity
        @passengers = []
    end

    attr_reader :passengers

    def full?
        return @passengers.length == @capacity
    end

    def board_passenger(p1)
        if !full?
            if p1.has_flight?(@flight_number)
                @passengers << p1
            end
        end
    end

    def list_passengers
        new_arr = []
        @passengers.each do |passenger|
            new_arr << passenger.name
        end
        return new_arr
    end

    def [](idx)
        if idx < @passengers.length 
            return @passengers[idx]
        end
    end

    def <<(p1)
        board_passenger(p1)
    end

end