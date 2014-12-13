class DashboardController < ApplicationController
	before_action :authenticate_user!
  def index
  	@emo_entries = EmoEntry.where(email: current_user.email)
  end
end
