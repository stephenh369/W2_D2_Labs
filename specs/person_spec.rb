require('minitest/autorun')
require('minitest/reporters')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

require_relative('../person')

class PersonTest < Minitest::Test

    def setup()
        @person1 = Person.new("Bob", 24)
        @person2 = Person.new("Michael", 30)
    end

    def test_find_name()
        @person1.find_name(@person1)
        assert_equal("Bob", @person1.find_name(@person1))
    end
    def test_find_age()
        @person2.find_age(@person2)
        assert_equal(30, @person2.find_age(@person2))
    end

end