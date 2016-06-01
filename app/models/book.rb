class Book < ActiveRecord::Base
	has_many :notifications, dependent: :destroy
    belongs_to :user
	belongs_to :category
	has_many :reviews, dependent: :destroy

has_attached_file :book_img, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

validates_attachment_presence :book_img
validates_attachment_size :book_img, :less_than => 5.megabytes
validates_attachment_content_type :book_img, :content_type => ['image/jpeg', 'image/png']

has_attached_file :file, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

validates_attachment_presence :file
validates_attachment_content_type :file, :content_type => ['application/pdf']

end
