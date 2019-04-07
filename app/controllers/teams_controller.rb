class TeamsController < ApplicationController
    
    def index
        @teams = Team.all
    end

    def show
        @team = Team.find(params[:id])
    end
    
    def new
        @team = Team.new
    end

    def create
        @team = Team.find(params[:id])
        @team = Team.create
    end
    
    def delete_team_member
        TeamMember.where(team_id: params[:team_id], user_id: params[:user_id]).destroy_all
        redirect_to teams_path
    end
end
