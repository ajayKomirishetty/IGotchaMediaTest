class Repair < ApplicationRecord
    validates :repair_date, :car_id, presence: true

end
