class UsuarioSerializer < ActiveModel::Serializer
  attributes :id, :nome, :endereco, :perfil_id, :queixa_ids
  has_many :comentarios
  has_many :queixas
  belongs_to :perfil
end
