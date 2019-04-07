class TeamMembersController < ApplicationController
    def index
        @team = Team.find(params[:team_id])
        @team_member = TeamMember.all
    end

    def new
        @team = Team.find(params[:team_id])
        @team_member = TeamMember.new
    end

    def create 
    end 

    def update 
    end

    def destroy
        @team_member = TeamMember.find(params[:id])
        @team_member.destroy
    end


end
