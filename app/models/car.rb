class Car < ApplicationRecord
    belongs_to :brand
  
    validates :brand_id, :owner_email, presence: true
  end
  