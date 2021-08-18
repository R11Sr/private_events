class UsereventsController < ApplicationController

    before_action :authenticate_user!
    
    def displayevents
        @events = current_user.events
    end 

    def allUsers
        @userList = User.all
    end
end

