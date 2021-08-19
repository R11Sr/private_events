class UsereventsController < ApplicationController
    before_action :set_event, only: %i[ attend ]

    before_action :authenticate_user!
    
    def displayhostedevents
        @events = current_user.hostedevents
    end 

    def allUsers
        @userList = User.all
    end
    
    def EventsToAttend
        @AllEvents = Event.all
    end

    def associatedEvents
        @invitedEvents = current_user.events
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

end

