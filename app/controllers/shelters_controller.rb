class SheltersController < ApplicationController
  before_action :authenticate_user!

  def index

  end

  def new
    @shelter = Shelter.new
  end

  def create
    @shelter = Shelter.create(shelter_params)

    if @shelter.save
      redirect_to shelter_path, notice: "Created shelter"
    else
      render :new, notice: "Error creating new shelter"
    end
  end

  private

  def shelter_params
    params.require(:shelter).permit(:user)
  end
end
