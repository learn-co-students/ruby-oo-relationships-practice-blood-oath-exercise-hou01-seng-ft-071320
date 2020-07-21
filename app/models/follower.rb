class Follower
    attr_reader :name, :age, :life_motto
    @@all = []

    def initialize(name, age, life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def cults
        BloodOath.all.select {|i| i.follower == self}.map{|i| i.cult}
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        array = self.all.select do |i|
            if i.age == age
                i
            end
        end
        array
    end

    def join_cult(cult)
        t = Time.now.to_s.split
        BloodOath.new(self, cult, t[0])
    end

    def my_cults_slogans
        BloodOath.all.find_all {|i| return i.cult.slogan if i.follower == self}
    end

    def self.most_active
        array = BloodOath.all.map {|i| i.follower.name}
        array.max_by {|i| array.count(i)}
    end

    def self.top_ten
        array = BloodOath.all.map {|i| i.follower.name}
        array.max_by(10) {|i| array.count(i)}.uniq
    end

    def fellow_cult_members
        binding.pry
        BloodOath.all.find_all {|i| i.cult == self.cults}.map {|i| i.name}
    end
end
