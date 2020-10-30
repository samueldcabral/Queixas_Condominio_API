class Arquivo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :file, type: String
  belongs_to :comentarios
  belongs_to :queixas
end
