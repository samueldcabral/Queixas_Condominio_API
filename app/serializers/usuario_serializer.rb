class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :nome, :email, :endereco, :perfil_id, :queixa_ids
  has_many :comentarios
  has_many :queixas
  belongs_to :perfil
end
