class Usuario
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :senha, type: String
  field :endereco, type: String
  belongs_to :perfil
  belongs_to :queixa
  has_many :comentarios
  has_many :queixas
  

end
