class Video < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	belongs_to :category
	has_attached_file :photo, :styles => { :medium => "300x300>"}, :default_url => "/images/:style/missing.png"
  	validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/
  	validates :title, presence: true
  	validates :description, presence: true, length: { minimum: 50, maximum: 250 }
end


