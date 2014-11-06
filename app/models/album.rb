class Album
  include Mongoid::Document
  field :name, type: String
  field :release_date, type: Date
end
