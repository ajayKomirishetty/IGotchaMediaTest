class Car < ApplicationRecord
    belongs_to :brand
  
    validates :brand_id,  presence: true
    validates :model, :doors, :presence =>  { :message => " cannot be blank" }
    validates_format_of :owner_email, with: URI::MailTo::EMAIL_REGEXP
    validate :validate_doors
    has_many :repairs,  :dependent => :destroy

    has_attached_file :photo,  validate_media_type: false
    validates_attachment_content_type :photo, content_type: /\Aimage\/.*\z/
  

    def validate_doors
        unless car.doors == 2 || car.doors == 4
            errors.add(:car, "doors must be 2 or 4" )
        end
    end

    
    def photo_url
       a = car.photo.path
       a.slice! Dir.pwd+"/public"
       a
    end

    def car
        car = self
    end

  end
  