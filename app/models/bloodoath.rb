class BloodOath
    attr_accessor :date
    @@all=[]
    def initialiaze
        @date=date
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