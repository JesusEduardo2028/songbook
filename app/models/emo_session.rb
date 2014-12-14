class EmoSession
  include Mongoid::Document

  has_many :emo_entries
  belongs_to :user

  field :start_at , type: Float
end
