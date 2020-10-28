class Comentario
  include Mongoid::Document
  include Mongoid::Timestamps
  field :descricao, type: String
  field :arquivo, type: Array
  belongs_to :denuncia
  belongs_to :usuario
end
