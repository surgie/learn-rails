# irb
# > load 'lib/example.rb'
# > require 'date'
# > ex = Example.new('Daniel', nil)     OR Example.new('Daniel', Date.new(1983, 8, 26))
# > list = ex.december_birthdays
# > ex.titled_name
# > ex.honorific = "Mr."
# > ex.titled_name


# Technically don't need to inherit from object since it's implied otherwise
class Example < Object
    
    # This is a comment.

    attr_accessor :honorific
    attr_accessor :name
    attr_accessor :date

    def initialize(name, date)
        @name = name
        @date = date.nil? ? Date.today : date
    end

    def backwards_name
        @name.reverse
    end

    def to_s
        @name
    end

    def titled_name
        # common pattern for essentially setting a default value
        @honorific ||= 'Esteemed'

        # could also concatenate them here...  @honorific + " " + @name
        "#{@honorific} #{@name}"
    end

    def december_birthdays
        born_in_december = []
        famous_birthdays.each do |name, date|
            if date.month == 12
                born_in_december << name
            end
        end
        born_in_december
    end

    private # everything after this point is private, can also use protected

    # Hash.... aka key/value, dictionary, associative array, or map
    def famous_birthdays
        birthdays = {
            'Ludwig van Beethoven' => Date.new(1770, 12, 16),
            'Dave Brubeck' => Date.new(1920, 12, 6),
            'Buddy Holly' => Date.new(1936, 9, 7),
            'Keith Richards' => Date.new(1943, 12, 18)
        }

        # Can also define hashes like this: birthdays = { beethoven: Date.new(1770, 12, 16), richards: Date.new(1943, 12, 18) }
    end

end