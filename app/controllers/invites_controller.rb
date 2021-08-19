class InvitesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_event, only: %i[ new ]

    
    def new
        # @event = Event.find(params[:event])
        @invite = Invite.new
        @invite.event_id = @event.id
        @invite.attendee_id = current_user.id
        if @invite.save
            flash[:notice] = "#{current_user.name} invited to attend Event at #{@event.location}!"
            redirect_to users_invitedevents_path
        else
            flash[:alert] = "Failed to accept invite"
            redirect_to root_path
        end
    end 

    private

    def set_event
        @event = Event.find(params[:event_id])
      end

end
