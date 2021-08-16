class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Creator         
  has_many :events, foreign_key: :creator_id

  #Attendee
  belongs_to :event, optional: true


end
