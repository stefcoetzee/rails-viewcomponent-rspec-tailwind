class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show]
  before_action :set_team, only: [:new, :create]

  def show
  end

  def new
    @athlete = @team.athletes.new
  end

  def create
    @athlete = @team.athletes.create(athlete_params) # create is equivalent to build/new (equivalent) + save
    redirect_to team_path(@team)
  end

  private

  def athlete_params
    params.require(:athlete).permit(:first_name, :last_name, :position,
      :jersey_number)
  end

  def set_athlete
    @athlete = Athlete.find(params[:id])
  end

  def set_team
    @team = Team.find(params[:team_id])
  end
end
