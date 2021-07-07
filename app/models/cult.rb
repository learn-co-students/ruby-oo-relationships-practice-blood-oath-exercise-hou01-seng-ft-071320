class Cult
    attr_accessor :name, :location, :founding_year, :slogan,:follower
    @@all=[]
    def initialize(name, location, founding_year, slogan)
    @name=name
    @location=location
    @founding_year=founding_year
    @slogan=slogan
    @@all<<self
    end
    def recruit_follower(follower)
        BloodOath.new('today',self,follower)
    end
    def cult_population
        cult_arr=BloodOath.all.find{|value|
        value.cult==self}
        cult_arr.size
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
    def self.find_by_founding_year(founding_year)
        @@all.find_all{|value|
        value.year==year}
    end
    def average_age
        arr=BloodOath.all.find{|value|
        value.cult==self}
        age_arr=[]
        arr.map{|ele| ele.follower.age
        }
        age_arr.sum/age_arr.size.to_f
        
    end
    def my_followers_mottos
        arr=BloodOath.all.find{|value|
        value.cult==self}
        arr.each{|ele|
        puts ele.follower.life_motto}
    end
    def self.least_popular
        bloodoath=BloodOath.all.find{|value|
        value.follower.size=value.follower.size.min}
        bloodoath.cult
    end
    def self..most_common_location
    end
end

