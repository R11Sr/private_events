class Event < ApplicationRecord
    validates :location, presence: true
    validates :date, presence: true

    #creator
    belongs_to :creator, class_name: 'User'

    #attendee
    # has_many :attendees, foreign_key: :event_id, class_name: 'User'

    has_many :event_mangers

    has_many :attendees, through: :event_mangers


end
