class Event < ApplicationRecord
    #creator
    belongs_to :creator, class_name: 'User'

    #attendee
    has_many :attendee, foreign_key: 'event_id', class_name: 'User'

end
