class AcademiaController < ApplicationController
  before_action :set_academium, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token
  before_action :require_user_logged_in!, only: [:new, :edit, :destroy, :enroll]
  before_action :is_gym_owner!, only: [:new, :edit, :destroy]

  # GET /academia
  def index
    @academia = Academium.all
  end

  # GET /academia/1
  def show
    @usuarios = Usuario.where(id: UserEnrollment.where(academium_id: @academium.id).pluck(:usuario_id)).pluck(:nome)
    @gym_owner = UserGymAdmin.find_by(academium_id: @academium.id).usuario_id if UserGymAdmin.find_by(academium_id: @academium.id)
    @user_enrollment = UserEnrollment.new
    @enroll_active = UserEnrollment.where(usuario_id: Current.user.id, academium_id: @academium.id, active: true)
    @enroll_inactive = UserEnrollment.where(usuario_id: Current.user.id, academium_id: @academium.id, active: false)
  end

  # GET /search
  def search
    lat = params[:lat]
    lng = params[:lng]

    has_locations = lat.present? && lng.present?
    gyms = helpers.order_by_location(lat,lng) if has_locations

    @academia_busca = Academium.all.where(nil)
    @academia_busca = Academium.all.search_by_name_address(params[:q]) if params[:q].present?
    @academia_busca = @academia_busca.in_order_of(:id, gyms) if has_locations
  end

  # GET /academia/new
  def new
    @academium = Academium.new
    @user_gym_admin = UserGymAdmin.new
  end

  # GET /academia/1/edit
  def edit
  end

  # POST /academia
  def create
    @academium = Academium.new(academium_params)

    if @academium.save
      @user_gym_admin = UserGymAdmin.new
      @user_gym_admin.usuario_id = Current.user.id
      @user_gym_admin.academium_id = @academium.id
      @user_gym_admin.active = true
      @user_gym_admin.save!
      redirect_to @academium, notice: "Academium was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /academia/1
  def update
    if @academium.update(academium_params)
      redirect_to @academium, notice: "Academium was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show_users
    nome_usuario = Usuario.where(id: 1)
    puts nome_usuario.inspect
  end
  # DELETE /academia/1
  def destroy
    @academium.destroy
    redirect_to academia_url, notice: "Academium was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_academium
      @academium = Academium.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def academium_params
      params.require(:academium).permit(:nome, :cnpj, :telefone, :endereco, :precoMatricula, :precoMensalidade, :site, :instagram, :facebook)
    end

    def user_gym_admins_params
      params.require(:user_gym_admins).permit(:usuario_id, :academium_id)
    end
end
