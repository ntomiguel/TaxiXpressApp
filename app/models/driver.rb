class Driver < ActiveRecord::Base
    belongs_to :car
  
    validates :name, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :license, presence: true,
                       uniqueness: { case_sensitive: false }
    def car_name
        self.car.code
    end
end
