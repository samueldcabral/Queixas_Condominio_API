class Perfil
  include Mongoid::Document
  include Mongoid::Timestamps
  field :tipo, type: String
end
