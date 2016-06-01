class User < ActiveRecord::Base
  has_many :notifications, dependent: :destroy
	has_one :profile, :dependent => :destroy
	has_many :books
	has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  before_create :build_default_profile

  private
    def build_default_profile    
      build_profile
      true 
    end






end
