class Arquivo
  include Mongoid::Document
  include Mongoid::Timestamps
  field :file, type: String
end
