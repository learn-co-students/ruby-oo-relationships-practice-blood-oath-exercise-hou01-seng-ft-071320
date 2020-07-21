require 'date'
class Cult
    attr_accessor :slogan
    attr_reader :name, :location, :founding_year, :slogan
    @@all = []

    def initialize(name, location, founding_year, slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        t = Time.now.to_s.split
        BloodOath.new(follower, self, t[0])
    end

    def self.all
        @@all
    end

    def cult_population
        array = []
        BloodOath.all.find_all do |i|
            if i.cult == self
                array << i.follower
            end
        end
        array.length
    end

    def self.find_by_name(name)
        self.all.find {|i| i.name == name}
    end

    def self.find_by_location(location)
        self.all.find_all {|i| i.location == location}
    end

    def self.find_by_founding_year(year)
        self.all.find_all {|i| i.founding_year == year}
    end

    def average_age
        array = []
        BloodOath.all.find_all do |i|
            if i.cult == self
                array << i.follower.age
            end
        end
        array.sum / array.length
    end

    def my_followers_mottos
        BloodOath.all.select {|i| i.cult == self}.map{|i| i.follower.life_motto}
    end

    def self.least_popular
        least_pop = 1000
        self.all.each do |i|
            if i.cult_population < least_pop
                least_pop = i.cult_population
            end
        end
        self.all.find {|i| i.cult_population == least_pop}
    end

    def self.most_common_location
        array = self.all.map {|i| i.location}
        array.max_by { |i| array.count(i) }
    end
end