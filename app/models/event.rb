class Event < ApplicationRecord
    validates :location, presence: true
    validates :date, presence: true

    #creator
    belongs_to :creator, class_name: 'User'

    #attendee

    has_many :Invites

    has_many :attendees, through: :Invites


end
