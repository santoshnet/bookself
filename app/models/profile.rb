class Profile < ActiveRecord::Base
  belongs_to :user

  has_attached_file :image, :styles => { :small => "150x150>" },
                  :url  => "/assets/products/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"


validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png']

   attr_accessor :image_delete
    before_validation { image.clear if image_delete == '1' }



end
