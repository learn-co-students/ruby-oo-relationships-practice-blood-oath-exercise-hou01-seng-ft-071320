class Cult
    attr_accessor :name,:location,:founding_year,:slogan

    @@all = []

    def initialize(name,location,founding_year,slogan)
        @name = name
        @location = location
        @founding_year = founding_year
        @slogan = slogan
        @@all << self
    end

    def recruit_follower(follower)
        BloodOath.new(self,follower,"YYYY-MM-DD")
    end

    def cult_population
        BloodOath.all.find_all {|index| index.cult == self}.length
    end

    def average_age
        age_array = BloodOath.all.find_all {|index| index.cult == self}
            .map{|index| index.follower.age}
        age_array.sum(0.0) / age_array.length
    end

    def my_followers_mottos
        BloodOath.all.find_all {|index| index.cult == self}.map{|index| index.follower.life_motto}
    end

    def self.all
        @@all
    end

    def self.find_by_name(name)
        self.all.find{|index| index.name == name}
    end

    def self.find_by_location(location)
        self.all.find_all{|index| index.location == location}
    end
    
    def self.find_by_founding_year(founding_year)
        self.all.find_all{|index| index.founding_year == founding_year}
    end

    def self.least_popular
        cult_array = BloodOath.all.map{|index|index.cult}
        cult_array.min_by {|index| cult_array.count(index)}
    end

    def self.most_common_location
        location_array = self.all.map{|index| index.location} 
        location_array.max_by {|index| location_array.count(index)}
        # location_count = Hash.new(0)
        # location_array.each {|location| location_count[location] += 1}
        # location_count.sort_by { |location,number| number}.last[0]
         
        # freq = location_array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
        # location_array.max_by { |v| freq[v] }
    end
end