class Notification < ActiveRecord::Base
belongs_to :notified_by, class_name: 'User'
belongs_to :user
belongs_to :book

validates :user_id, :notified_by_id, :book_id, :identifier, :notice_type, presence: true

end
