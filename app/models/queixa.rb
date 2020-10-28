class Queixa
  include Mongoid::Document
  include Mongoid::Timestamps
  field :tipo, type: String
  field :gravidade, type: String
  field :titulo, type: String
  field :descricao, type: String
  field :privacidade, type: Mongoid::Boolean
  belongs_to :usuario
  belongs_to :comentario
  belongs_to :arquivo
  belongs_to :status
  has_many :usuarios

end
