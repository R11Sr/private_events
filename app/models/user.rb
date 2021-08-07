class User < ApplicationRecord
    #creator
    has_many :events, foreign_key: 'creator_id'
    
    #attendee
    belongs_to :event, optional: true    
end
