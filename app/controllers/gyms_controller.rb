class GymsController < ApplicationController
  before_action :set_gym, only: %i[ show edit update destroy ]

  # GET /gyms
  def index
    @gyms = Gym.all
  end

  # GET /gyms/1
  def show
  end

  # GET /gyms/new
  def new
    @gym = Gym.new
  end

  # GET /gyms/1/edit
  def edit
  end

  # POST /gyms
  def create
    @gym = Gym.new(gym_params)

    if @gym.save
      redirect_to @gym, notice: "Gym was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /gyms/1
  def update
    if @gym.update(gym_params)
      redirect_to @gym, notice: "Gym was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /gyms/1
  def destroy
    @gym.destroy
    redirect_to gyms_url, notice: "Gym was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gym
      @gym = Gym.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def gym_params
      params.require(:gym).permit(:name, :cnpj, :phone_number, :address, :registration_fee, :montlhy_fee, :site, :instagram, :facebook)
    end
end
