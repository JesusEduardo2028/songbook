class PlayerEntry
  include Mongoid::Document
  belongs_to :emo_session

  field :timestamp, type: Float
  field :song_id, type: BSON::ObjectId
  field :action , type: Symbol
end
