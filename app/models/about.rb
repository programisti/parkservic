class About < ActiveRecord::Base
  validates :content, presence: true
  validates :image, presence: true
  has_attached_file :image, :styles => { :medium => "550x200>", :thumb => "100x100>" }
  validates_attachment_content_type :image, content_type:  /\Aimage\/.*\Z/
end
