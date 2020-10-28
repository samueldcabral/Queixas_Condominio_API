class Comentario
  include Mongoid::Document
  include Mongoid::Timestamps
  field :descricao, type: String
  belongs_to :usuario
  belongs_to :arquivo
  has_many :queixas
end
