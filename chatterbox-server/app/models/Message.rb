class Message < ActiveRecord::Base
    def self.createdat
        self.all.order(:created_at)
    end
end