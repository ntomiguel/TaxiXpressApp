class Booking < ActiveRecord::Base
    belongs_to :category
  
    validates :pickup, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :dropoff, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :people, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :category, presence: true,
                       uniqueness: { case_sensitive: false }
end
