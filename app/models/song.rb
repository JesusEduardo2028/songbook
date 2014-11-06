class Song
  include Mongoid::Document
  field :name, type: String
  field :duration, type: Integer
end
