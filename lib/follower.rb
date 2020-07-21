class Follower
    attr_accessor :name, :age, :life_motto

    @@all = []

    def initialize(name,age,life_motto)
        @name = name
        @age = age
        @life_motto = life_motto
        @@all << self
    end

    def join_cult(cult)
        BloodOath.new(cult,self,"YYYY-MM-DD")
    end
    def cults
        BloodOath.all.find_all{|index|index.follower==self}
        .map{|index| index.cult}
    end

    def my_cult_slogans
        BloodOath.all.find_all{|index| index.follower==self}
        .map{|index|index.cult.slogan}
    end

    def self.all
        @@all
    end

    def self.of_a_certain_age(age)
        self.all.find_all{|index| index.age >= age}
    end

    def self.most_active
        follower_array = BloodOath.all.map{|index| index.follower}
        follower_array.max_by{|index|follower_array.count(index)}
    end

    def self.top_ten
        follower_array = BloodOath.all.map{|index| index.follower}
        follower_array.max_by(10){|index|follower_array.count(index)}.uniq
    end
end