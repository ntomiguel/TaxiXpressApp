class Category < ActiveRecord::Base
    has_many :bookings
    has_many :cars
    
    validates :name, presence: true,
                       uniqueness: { case_sensitive: false }
end
