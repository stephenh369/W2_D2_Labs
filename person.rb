class Person

    attr_reader :name, :age

    def initialize(name, age)
        @name = name
        @age = age
    end

    def find_name(person)
        return person.name()
    end

    def find_age(person)
        return person.age()
    end
end