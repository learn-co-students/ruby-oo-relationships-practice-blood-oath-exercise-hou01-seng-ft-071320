class Cult
    attr_reader :name, :location, :year_founded, :slogan
    @@all = []
    def initialize(name, location, year_founded, slogan, minimum_age)
        @name = name
        @location = location
        @year_founded = year_founded
        @slogan = slogan
        @minimum_age = minimum_age
        @@all << self
    end

    def recruit_follower(follower,date)
        if follower.age >= @minimum_age
            BloodOath.new(follower,self, date)
        else
            puts "You're not old enough to join"
        end
        
    end

    def followers
        follower_list = []
        BloodOath.all.each do |oath|
            if oath.cult == self
                follower_list << self
            end
        end
        @follower_list = follower_list
    end

    def cult_population
        followers = []
        BloodOath.all.each do |oath|
            if oath.cult == self
                followers << self
            end
        end
        followers.count
    end

    def average_age
        followers = BloodOath.all.select do |oath|
            oath.cult == self
        end
        ages = followers.map do |oath|
            oath.follower.age
        end
        average = ages.sum / ages.count.to_f
    end

    def my_followers_mottos
        followers = BloodOath.all.select do |oath|
            oath.cult == self
        end
        mottos = followers.map do |oath|
            oath.follower.motto
        end

    end


    def self.all
        @@all
    end

    def self.find_by_name(name)
        all.find do |m|
            name == m.name
        end
    end

    def self.find_by_location(location)
        all.find do |m|
            location == m.location
        end
    end

    def self.find_by_founding_year(year)
        all.find do |m|
            year == m.year_founded
        end
    end

    def self.least_popular
        lowest_population = 999999999999
        least_pop = []
        Cult.all.each do |m|
            if m.cult_population < lowest_population
                lowest_population = m.cult_population
                least_pop = m
            end
        end
        least_pop
    end

    def self.most_common_location
        locations = Cult.all.map do |c|
            c.location
        end
        locations = locations.uniq
        most_cults = []
        highest_number = 0
        locations.each do |place|
            number_of_cults = 0
            Cult.all.each do |m|
                if m.location == place
                    number_of_cults +=1
                end
            end
            if number_of_cults > highest_number
                highest_number = number_of_cults
                most_cults = place
            end
        end
        most_cults
    end

    def minimum_age
        @minimum_age
    end


end