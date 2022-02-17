class TeamsController < ApplicationController
  before_action :set_team, only: [:show, :edit, :update, :destroy]

  def index
    @teams = Team.all
  end

  def show
  end

  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "Team has been created."
      redirect_to @team
    else
      flash[:notice] = "Team has not been created."
      render "new"
    end
  end

  def edit
  end

  def update
    if @team.update(team_params)
      flash[:notice] = "Team has been updated."
      redirect_to @team
    else
      render "edit"
    end
  end

  def destroy
    @team.destroy
    flash[:notice] = 'Team has been deleted.'
    redirect_to teams_path, status: :see_other
  end

  private

  def team_params
    params.require(:team).permit(:name)
  end

  def set_team
    @team = Team.find(params[:id])
  end
end
