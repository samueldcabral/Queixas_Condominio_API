class Usuario
  include Mongoid::Document
  include Mongoid::Timestamps
  field :nome, type: String
  field :senha, type: String
  field :endereco, type: String
  field :denuncias, type: Array
  belongs_to :perfil
end
