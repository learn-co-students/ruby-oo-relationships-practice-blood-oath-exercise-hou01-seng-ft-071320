class Follower
    attr_accessor :name, :age, :life_motto
    @@all=[]
    def initialize(name, age, life_motto)
    @name=name
    @age=age
    @life_motto=life_motto
    @cult=cult
    @@all<<self
    end
    def cults
        arr=BloodOath.all.find{|value|
        value.follower==self}
        arr.each{|ele|
        ele.cult
        }
    end
    def join_cult(cult)
        BloodOath.new("today",cult,self)
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
