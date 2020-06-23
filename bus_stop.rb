class BusStop
   
   attr_accessor :bus_stop_name, :queue

    def initialize(bus_stop_name)
        @bus_stop_name = bus_stop_name
        @queue = []
    end

    def add_person_to_queue(person)
        return @queue.push(person)
    end
end