class Product < ActiveRecord::Base
  belongs_to :category
  
  has_attached_file :picture,
                    styles: { medium: "300x300>", thumb: "100x100>" },
                    default_url: "/images/:style/missing.png"
  
  acts_as_taggable_on :tags
  
  validates :name, 
            presence: true,
            uniqueness: { case_sensitive: false }

  validates_attachment :picture,
                       presence: true,
                       content_type: { 
                         content_type: 
                         [ "image/jpeg", "image/gif", "image/png" ] }
  def category_name
      self.category.name
  end
  
end
