class SheltersController < ApplicationController
  #before_action :authenticate_user!

  def index
    @shelters = Shelter.all
  end

  def new
    @shelter = Shelter.new
    @shelter.address.new
    @shelter.meal.new
    @shelter.gender.new
  end

  def create
    @shelter = Shelter.new(shelter_params)

    if @shelter.save
      redirect_to shelters_path, notice: "Created shelter"
    else
      render :new, notice: "Error creating new shelter"
    end
  end

  private

  def shelter_params
    params.require(:shelter).permit(:name, 
                                    :description, 
                                    :beds, 
                                    :fee,
                                    :age_min, 
                                    :age_max, 
                                    :phone,
                                    meals_attributes: [:id, :breakfast, :lunch, :dinner],
                                    address_attributes: [:id, :street, :city, :state, :zip],
                                    gender_attributes: [:id, :male, :female, :other])
  end
end
