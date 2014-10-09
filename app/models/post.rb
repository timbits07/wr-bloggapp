class Post < ActiveRecord::Base
	belongs_to :user
	validates :title, presence: true
	validates :body, presence: true
	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => ""
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
end
