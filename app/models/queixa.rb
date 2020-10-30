class Queixa
  include Mongoid::Document
  include Mongoid::Timestamps
  field :tipo, type: String
  field :gravidade, type: String
  field :titulo, type: String
  field :descricao, type: String
  field :privacidade, type: Mongoid::Boolean
  has_and_belongs_to_many :usuarios
  has_many :comentarios
  has_many :arquivos
  belongs_to :status

end
