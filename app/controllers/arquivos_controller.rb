class ArquivosController < ApplicationController
  before_action :set_arquivo, only: [:show, :update, :destroy]

  # GET /arquivos
  def index
    @arquivos = Arquivo.all

    render json: @arquivos
  end

  # GET /arquivos/1
  def show
    render json: @arquivo
  end

  # POST /arquivos
  def create
    @arquivo = Arquivo.new(arquivo_params)
    @comentario = @arquivo.build_comentario
    @queixa = @arquivo.build_queixa

    if @arquivo.save
      render json: @arquivo, status: :created, location: @arquivo
    else
      render json: @arquivo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /arquivos/1
  def update
    if @arquivo.update(arquivo_params)
      render json: @arquivo
    else
      render json: @arquivo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /arquivos/1
  def destroy
    @arquivo.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arquivo
      @arquivo = Arquivo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def arquivo_params
      params.require(:arquivo).permit(:file)
    end
end
