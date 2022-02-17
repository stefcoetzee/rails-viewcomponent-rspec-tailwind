class AthletesController < ApplicationController
  before_action :set_athlete, only: [:show, :edit, :update, :destroy]
  before_action :set_team, only: [:new, :create, :destroy]

  def show
  end

  def new
    @athlete = @team.athletes.new
  end

  def create
    @athlete = @team.athletes.new(athlete_params)
    if @athlete.save
      flash[:notice] = "Player has been added."
      redirect_to team_path(@team)
    else
      flash[:notice] = "Player has not been added."
      render "new"
    end
  end

  def edit
  end

  def update
    if @athlete.update(athlete_params)
      flash[:notice] = "Player has been updated."
      redirect_to @athlete
    else
      flash[:notice] = "Player has not been updated."
      render "edit"
    end
  end

  def destroy
    @athlete.destroy
    flash[:notice] = "Player has been deleted."
    redirect_to team_path(@team), status: :see_other
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
    if params[:team_id].present?
      @team = Team.find(params[:team_id])
    else
      @team = Team.find(Athlete.find(params[:id]).team_id)
    end
  end
end
