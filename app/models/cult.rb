class Cult
    attr_accessor :name, :location, :founding_year, :slogan,:follower
    @@all=[]
    def initialize
    @name=name
    @location=location
    @founding_year=founding_year
    @slogan=slogan
    @@all<<self
    end
    def recruit_follower(follower)
        self<<follower
    end
    def cult_population
        self.size
    end
    def self.all
        @@all
    end
    def self.find_by_name(name)
        @@all.find_all{|value|
        value.name==name}
    end
    def self.find_by_location(location)
        @@all.find_all{|value|
        value.location==location}
    end
    def self.find_by_founding_year(year)
        @@all.find_all{|value|
        value.year==year}
    end
    def average_age
    end
    def my_followers_mottos
    end
    def self.least_popular
    end
    def self..most_common_location
    end
end

