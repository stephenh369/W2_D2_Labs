class Bus 

    attr_accessor :route_number, :destination

    def initialize(route_number, destination)
        @route_number = route_number
        @destination = destination
        @passengers = []
    end


    def find_bus_destination(bus)
        return bus.destination()
    end

    def find_bus_number(bus)
        return bus.route_number()
    end

    def drive_bus(bus)
        return "Brum brum"
    end

    def number_of_passengers(bus)
        return @passengers.count()
    end

    def pick_up(person)
        @passengers.push(person)
    end

    def drop_off(person)
        @passengers.delete(person)
    end

    def empty_bus(bus)
        @passengers = []
    end

end
