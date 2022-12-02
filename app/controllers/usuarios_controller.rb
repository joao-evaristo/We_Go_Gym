class UsuariosController < ApplicationController
  before_action :set_usuario, only: %i[ show edit update destroy ]
  before_action :require_user_logged_in!, only: [:show, :edit]
  before_action :user_permission, only: [:edit, :update, :destroy]

  # GET /usuarios
  def index
    @usuarios = Usuario.all
  end

  # GET /usuarios/1
  def show
  end

  # GET /usuarios/new
  def new
    @usuario = Usuario.new
  end

  # GET /usuarios/1/edit
  def edit
  end
  def login

  end

  def login_func
    user = Usuario.find_by(email: params[:email])
    if user.present? && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Bem vindo"
    else
      flash.now[:alert] = "Email ou senha invalido"
      render :login, status: :unprocessable_entity
    end
  end

  def logout
    session[:user_id] = nil
    flash.now[:notice] = "Saiu"
    redirect_to root_path
  end

  # POST /usuarios
  def create
    @usuario = Usuario.new(usuario_params)

    if @usuario.save
      session[:user_id] = @usuario.id
      redirect_to root_path, notice: "Conta registrada com sucesso"
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      redirect_to @usuario, notice: "Usuario was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @usuario.destroy
    redirect_to usuarios_url, notice: "Usuario was successfully destroyed."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def usuario_params
      params.require(:usuario).permit(:nome, :data_nascimento, :telefone, :email, :password, :password_confirmation)
    end
end
