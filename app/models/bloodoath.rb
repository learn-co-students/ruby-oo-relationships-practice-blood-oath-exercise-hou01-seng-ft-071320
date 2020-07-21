class BloodOath
    attr_reader :init_date, :cult, :follower

    @@all = []
    def initialize(follower, cult, init_date)
        @follower = follower
        @cult = cult
        @init_date = init_date

        @@all << self

    end

    def self.all
        @@all
    end

    def self.first_oath
        earliest = 9999999999
        first_oath = []
        @@all.each do |o|
            if o.init_date < earliest
                earliest = o.init_date
                first_oath = o
            end
        end
        first_oath
    end
    

end