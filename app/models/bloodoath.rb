class BloodOath
    attr_reader :initiation_date, :cult, :follower
    @@all=[]
    def initialiaze(initiation_date,cult,follower)
        @initiation_date = initiation_date
    @cult = cult
    @follower = follower
        @@all<<self
    end
    def initiation_date
        self.date
    end
    def self.all
        @@all
    end
    def self.first_oath
    end
end