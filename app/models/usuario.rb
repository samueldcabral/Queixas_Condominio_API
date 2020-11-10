class Usuario
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :senha, type: String
  field :endereco, type: String
  belongs_to :perfil
  has_many :comentarios
  has_and_belongs_to_many :queixas
  
end
