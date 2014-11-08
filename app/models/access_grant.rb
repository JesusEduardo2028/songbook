class AccessGrant
  include Mongoid::Document
  include Mongoid::Timestamps

  field :access_token, :type => String

  belongs_to :user

  before_create :gen_tokens

  # generates tokens associated with code, access_token and refresh_token
  def gen_tokens
    self.access_token = SecureRandom.hex(16)
  end

end
