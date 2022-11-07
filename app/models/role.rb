class Role < ActiveRecord::Base
    has_many :auditions

    def auditions
        self.auditions
    end

    def actors
        self.auditions.actor
    end

    def locations
        self.auditions.location
    end

    def lead
        self.auditions.where("hired == ?", true)
    end

    def understudy
        self.auditions.where("hired DESC limit 2")
    end
end