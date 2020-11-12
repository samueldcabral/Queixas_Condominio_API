class ComentariosController < ApplicationController
  before_action :set_comentario, only: [:show, :update, :destroy]

  # GET /comentarios
  def index
    @comentarios = Comentario.all

    render json: @comentarios
  end

  # GET /comentarios/1
  def show
    render json: @comentario
  end

  # POST /comentarios
  def create
    @comentario = Comentario.new(comentario_params)

    # Find
    if params[:usuario_id]
      @usuario = Usuario.find(params[:usuario_id])

      @queixa = Queixa.find(params[:queixa_id])
      # push to array
      @queixa.usuario_ids << @usuario.id
      @queixa.update_attribute(:usuario_ids, @queixa.usuario_ids)
    end

    @comentario.usuario_id = params[:usuario_id]
    @comentario.queixa_id = params[:queixa_id]

    if @comentario.save
      render json: @comentario, status: :created, location: @comentario
    else
      render json: @comentario.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /comentarios/1
  def update
    if @comentario.update(comentario_params)
      render json: @comentario
    else
      render json: @comentario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /comentarios/1
  def destroy
    @comentario.destroy
  end

  def find_by_queixa_id
    @comentario = Comentario.where(:queixa_id => params[:queixa_id])
    render json: @comentario
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comentario
      @comentario = Comentario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comentario_params
      params.require(:comentario).permit(:denuncia_id, :usuario_id, :descricao, :arquivo)
    end
end
