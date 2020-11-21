class UsuariosController < ApplicationController
  before_action :set_usuario, only: [:show, :update, :destroy]

  # GET /usuarios
  def index
    @usuarios = Usuario.all

    render json: @usuarios
  end

  # GET /usuarios/1
  def show
    render json: @usuario
  end

  # POST /usuarios
  # def create
  #   @usuario = Usuario.new(usuario_params)

  #   @usuario.perfil_id = params[:perfil_id]

  #   if @usuario.save
  #     render json: @usuario, status: :created, location: @usuario
  #   else
  #     render json: @usuario.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /usuarios/1
  def update
    if @usuario.update(usuario_params)
      render json: @usuario
    else
      render json: @usuario.errors, status: :unprocessable_entity
    end
  end

  # DELETE /usuarios/1
  def destroy
    @queixas = Queixa.where(:criado_por => params[:id])
    @comentariosUsuario = Comentario.where(:usuario_id => params[:id])

    #falta excluir todos os comentários vinculados a queixa que outros usuários fizeram. Algo do tipo que está a baixo
    # @comentariosOutrosUsuarios = Comentario.where(:queixa_id => @queixas[:id]) #esse @queixas é o resultado de todas as queixas do usuario, para verificar quais comentários estão nessas queixas

    @comentariosUsuario.destroy
    @queixas.destroy
    @usuario.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def usuario_params
      params.require(:usuario).permit(:nome, :email, :senha, :endereco, :denuncias, :perfil_id)
    end
end
