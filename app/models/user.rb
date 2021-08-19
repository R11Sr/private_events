class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #Creator         
  has_many :hostedevents, foreign_key: :creator_id, class_name: 'Event'

  #Attendee
  has_many :Invites, foreign_key: 'attendee_id'
  has_many :events, through: :Invites


end
