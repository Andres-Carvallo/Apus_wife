class Baby < ApplicationRecord
    has_many :breastfeedings, dependent: :destroy

    def total_quantity
        breastfeedings.sum(:feeding_quantity)
    end

    def today_feeding
        breastfeedings.where('created_at > ?', Date.today).count 
    end

    def last_breastfeeding_date
        if breastfeedings.last == nil
            "No breastfeedings"
        else
            breastfeedings.last.created_at
        end
    end

    def breastfeeding_quantity_today
        breastfeedings.where('created_at > ?', Date.today).sum(:feeding_quantity)
    end

    def breastfeeding_time_today
        breastfeedings.where('created_at > ?', Date.today).sum(:feeding_time)
    end
end
