require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
require_relative('../bus_stop')

class BusStopTest < Minitest::Test

    def setup()
        @person1 = Person.new("Bob", 24)
        @person2 = Person.new("Michael", 30)
        @bus1 = Bus.new(22, "Ocean Terminal")
        @bus2 = Bus.new(44, "Wallyford")
        @bus_stop1 = BusStop.new("Waverley Station")
        @bus_stop2 = BusStop.new("Haymarket Station")
    end

    def test_add_person_to_queue()
        queue = @bus_stop1.add_person_to_queue(@person1), 
        @bus_stop1.add_person_to_queue(@person2)
        assert_equal(2, queue.count())
    end

    def test_pick_up_all()
        @bus_stop1.add_person_to_queue(@person1) 
        @bus_stop1.add_person_to_queue(@person2)
        pick_up = @bus1.pick_up_all(@bus_stop1, @bus1)
        assert_equal(2, pick_up.count)
    end

end

