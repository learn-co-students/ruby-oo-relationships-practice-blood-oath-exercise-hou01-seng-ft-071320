class Follower
    attr_reader :name, :age, :motto
    @@all = []
    def initialize(name, age, motto)
        @name = name
        @age = age
        @motto = motto
    
        @@all << self
    end
    
    def cults
        m = BloodOath.all.select do |oath|
            oath.follower == self
        end
        m.map do |oo|
            oo.cult
        end

    end

    def join_cult(cult, date)
        if cult.minimum_age <= @age
            BloodOath.new(self, cult, date)
        else
            puts "You're not old enough to join"
        end
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age_in)
        @@all.select do |n|
            n.age >= age_in 
        end
    end

    def my_cults_slogans
        cult_slogans = self.cults.map do |cult|
            cult.cult.slogan
        end
    end

    def self.most_active
        highest_number = 0
        most_active_person = []
        @@all.each do |person|
            if person.cults.count > highest_number
                highest_number = person.cults.count
                most_active_person = person
            end
        end
        #most_active_person
        highest_number
    end

    def self.top_ten
        top_ten = @@all.sort_by do |person|
            -(person.cults.count)
        end
        top_ten = top_ten[0..9]

      
    end

    def fellow_cult_members
        fellow_members = []
        self.cults.each do |m|
            BloodOath.all.each do |oath|
                if oath.cult == m 
                    fellow_members << oath.follower
                end
            end

        end
        fellow_members.uniq
    end
end