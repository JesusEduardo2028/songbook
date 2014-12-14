class EmoEntry
  include Mongoid::Document
  belongs_to :emo_session

  field :nodes , type: Array
  field :timestamp, type: String
  field :excitement, type: String
  field :frustration, type: String
  field :meditation, type: String
  field :engagement, type: String
  field :email, type: String

end
