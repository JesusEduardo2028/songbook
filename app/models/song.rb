class Song
  include Mongoid::Document
  field :name, type: String
  field :duration, type: Integer
  field :url, type: String
  belongs_to :album
end
