class SheltersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :update]
  before_action :get_shelter, only: [:edit, :update]

  def index
    @shelters = Shelter.all
  end

  def edit
  end

  def update
    if @shelter.update(shelter_params)
      redirect_to edit_shelter_path(@shelter), notice: "Beds Updated"
    else
      redirect_to edit_shelter_path(@shelter), notice: "Error. Did not update"
    end
  end

  def new
    @shelter = Shelter.new

    @shelter.build_meal
    @shelter.build_gender
    @shelter.build_address
  end

  def create
    @shelter = Shelter.create(shelter_params)
    @shelter.users << current_user 

    if @shelter.save
      redirect_to shelters_path, notice: "Created shelter"
    else
      render :new, notice: "Error creating new shelter"
    end
  end

  private

  def get_shelter
    @shelter = current_user.shelter  
  end

  def shelter_params
    params.require(:shelter).permit(:name, 
                                    :description, 
                                    :beds, 
                                    :fee,
                                    :age_min, 
                                    :age_max, 
                                    :phone).tap do |whitelist|
                                      whitelist[:meal] = params[:shelter][:meal]
                                      whitelist[:address] = params[:shelter][:address]
                                      whitelist[:gender] = params[:shelter][:gender]
                                    end
  end
end
