class TeamMembersController < ApplicationController
    def index
        @team = Team.find(params[:team_id])
        @users = User.all
    end

    def new
        @team_member = TeamMember.new
    end

    def create 
        @team = Team.find(params[:team_id])
        @user = User.find(params[:user_id])
        @team_member = TeamMember.new  
        @team_member.user = @user
        @team_member.team = @team
        @team_member.save

        redirect_to teams_path
    end 

    def update 
    end

end
