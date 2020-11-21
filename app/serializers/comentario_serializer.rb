class ComentarioSerializer < ActiveModel::Serializer
  attributes :id, :descricao

  belongs_to :usuario
end
