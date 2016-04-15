class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :shopping_orders, dependent: :destroy
  has_many :packing_jobs
  geocoded_by :address, :units => :km
  after_validation :geocode, :if => :address_changed?
  
end
