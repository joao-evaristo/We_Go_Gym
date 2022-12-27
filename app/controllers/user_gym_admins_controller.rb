class UserGymAdminsController < ApplicationController
  before_action :set_user_gym_admin, only: %i[ show edit update destroy ]

  # GET /user_gym_admins
  def index
    @user_gym_admins = UserGymAdmin.all
  end

  # GET /user_gym_admins/1
  def show
  end

  # GET /user_gym_admins/new
  def new
    @user_gym_admin = UserGymAdmin.new
  end

  # GET /user_gym_admins/1/edit
  def edit
  end

  # POST /user_gym_admins
  def create
    @user_gym_admin = UserGymAdmin.new(user_gym_admin_params)

    if @user_gym_admin.save
      redirect_to @user_gym_admin, notice: "User gym admin was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_gym_admins/1
  def update
    if @user_gym_admin.update(user_gym_admin_params)
      redirect_to @user_gym_admin, notice: "User gym admin was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /user_gym_admins/1
  def destroy
    @user_gym_admin.destroy
    redirect_to user_gym_admins_url, notice: "User gym admin was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_gym_admin
      @user_gym_admin = UserGymAdmin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_gym_admin_params
      params.require(:user_gym_admin).permit(:active, :usuario_id, :academium_id)
    end
end
