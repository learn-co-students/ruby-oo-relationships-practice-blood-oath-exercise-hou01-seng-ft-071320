class Follower
    attr_accessor :name, :age, :life_motto,:cult
    @@all=[]
    def initialize
    @name=name
    @age=age
    @life_motto=life_motto
    @cult=cult
    @@all<<self
    end
    def cults
        self.cult
    end
    def join_cult(cult)
        Cult.find_by_name(cult)<<self
    end
    def self.all
        @@all
    end
    def self.of_a_certain_age(age)
        @@all.find_all{|value|
        value.age>=age}
    end
    def my_cults_slogans
    end
    def self.most_active
    end
    def self..top_ten
    end
end
