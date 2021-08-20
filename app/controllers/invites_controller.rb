class InvitesController < ApplicationController
    before_action :authenticate_user!
    before_action :set_event, only: %i[ new ]

    
    def new
        @invite = Invite.new
        @invite.event_id = @event.id
        @invite.attendee_id = current_user.id

        #test to see if the User is already and attendee to that event
        if Invite.where('event_id =:event AND attendee_id = :attendee',{event: @event.id, attendee: current_user.id}).any?
            flash[:alert] = "You are already invited to this Event"
            redirect_to users_invitedevents_path

        else
            #if the user has not been invited. Save the invitation
            if @invite.save
                flash[:notice] = "#{current_user.name} invited to attend Event at #{@event.location}!"
                redirect_to users_invitedevents_path
            else
                flash[:alert] = "Failed to accept invite"
                redirect_to root_path
            end
        end

    end 

    private

    def set_event
        @event = Event.find(params[:event_id])
      end

end
