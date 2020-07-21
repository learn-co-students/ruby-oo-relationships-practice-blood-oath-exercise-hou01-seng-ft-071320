class BloodOath
    attr_accessor :cult, :follower, :initiation_date

    @@all = []

    def initialize(cult,follower,init_date)
        @cult = cult
        @follower = follower
        @initiation_date = init_date
        @@all << self
    end

    def self.all
        @@all
    end

    def self.first_oath
        binding.pry
        @@all.first
    end
end
