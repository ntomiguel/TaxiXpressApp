class Car < ActiveRecord::Base
    belongs_to :category
    has_many :drivers
  
    validates :code, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :brand, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :seats, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :model, presence: true,
                       uniqueness: { case_sensitive: false }
    validates :category, presence: true,
                       uniqueness: { case_sensitive: false }

end
