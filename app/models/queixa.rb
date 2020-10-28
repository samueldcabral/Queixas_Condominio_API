class Queixa
  include Mongoid::Document
  include Mongoid::Timestamps
  field :usuarioid, type: Array
  field :tipo, type: String
  field :gravidade, type: String
  field :titulo, type: String
  field :descricao, type: String
  field :privacidade, type: Mongoid::Boolean
  field :status, type: Array
  field :arquivos, type: Array
  field :comentarios, type: Array
  belongs_to :usuario
end
