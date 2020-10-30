class QueixasController < ApplicationController
  before_action :set_queixa, only: [:show, :update, :destroy]

  # GET /queixas
  def index
    @queixas = Queixa.all

    render json: @queixas
  end

  # GET /queixas/1
  def show
    render json: @queixa
  end

  # POST /queixas
  def create
    @queixa = Queixa.new(queixa_params)
    @status = @queixa.build_status

     # Find
     if params[:usuario_id]
      @usuario = Usuario.find(params[:usuario_id])
      # push to array
      @queixa.usuario_ids << @usuario.id
    end

    if @queixa.save
      @usuarios = Queixa.where(id: queixa_params[:usuario_ids])
      # Create join table records
      @usuarios.each { |usuario| usuario.usuarios << @queixas }

      render json: @queixa, status: :created, location: @queixa
    else
      render json: @queixa.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /queixas/1
  def update
    if @queixa.update(queixa_params)
      render json: @queixa
    else
      render json: @queixa.errors, status: :unprocessable_entity
    end
  end

  # DELETE /queixas/1
  def destroy
    @queixa.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_queixa
      @queixa = Queixa.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def queixa_params
      params.require(:queixa).permit(:usuario_id, :usuarioid, :tipo, :gravidade, :titulo, :descricao, :privacidade, :status, :arquivos, :comentarios)
    end
end
