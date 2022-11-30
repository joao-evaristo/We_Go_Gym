class AcademiaController < ApplicationController
  before_action :set_academium, only: %i[ show edit update destroy ]

  # GET /academia
  def index
    @academia = Academium.all
  end

  # GET /academia/1
  def show
  end

  # GET /academia/new
  def new
    @academium = Academium.new
  end

  # GET /academia/1/edit
  def edit
  end

  # POST /academia
  def create
    @academium = Academium.new(academium_params)

    if @academium.save
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
end
