require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../bus')
require_relative('../person')
class BusTest < Minitest::Test 

    def setup()
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus2 = Bus.new(44, "Wallyford")
    end

    def test_find_bus_destination()
        bus_destination = @bus1.find_bus_destination(@bus1)
        assert_equal("Ocean Terminal", bus_destination)
    end

    def test_find_bus_number()
        bus_route = @bus2.find_bus_number(@bus2)
        assert_equal(44, bus_route)
    end 

    def test_drive_bus()
        assert_equal("Brum brum", @bus1.drive_bus(@bus1))
    end

    def test_number_of_passengers()
        number_of_passengers = @bus1.number_of_passengers(@bus1)
        assert_equal(0, number_of_passengers)
    end

    def test_pick_up()
        @passengers = @bus1.pick_up(@person1)
        assert_equal(1, @bus1.number_of_passengers(@bus1))
    end
    def test_drop_off()
        @bus1.pick_up(@person1)
        @passengers = @bus1.drop_off(@person1)
        assert_equal(0, @bus1.number_of_passengers(@bus1))
    end
    def test_empty_bus()
        empty_bus = @bus1.empty_bus(@bus1)
        assert_equal([], empty_bus)
    end

end
