class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  enum role: [ :guest, :user, :seller ]
  has_many :products
  has_many :bids, through: :products
  
  geocoded_by :address
  before_save :geocode

  reverse_geocoded_by :latitud, :longitud
  before_save :reverse_geocode 
end
