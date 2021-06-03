class GhostsController < ApplicationController
  before_action :set_ghost, only: :show

  def index
    @ghosts = Ghost.all
    if params[:query].present?
      @ghosts = Ghost.search_by_name_and_category(params[:query])
    else
      @ghosts = Ghost.all
    end
  end

  def show
  end

  def new
    @ghost = Ghost.new
  end

  def create
    @ghost = Ghost.new(ghost_params)
    @ghost.user = current_user
    if @ghost.save
      redirect_to ghost_path(@ghost)
    else
      render :new
    end
  end

  private

  def set_ghost
    @ghost = Ghost.find(params[:id])
  end

  def ghost_params
    params.require(:ghost).permit(:name, :description, :category, :age, :rate, :location, :photo)
  end
end
