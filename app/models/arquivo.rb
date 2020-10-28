class Arquivo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :file, type: String
  has_many :comentarios
  has_many :queixas
end
