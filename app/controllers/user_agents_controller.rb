class UserAgentsController < ApplicationController
  def index
    @uas = UserAgent.all.order(:user_agent_string)
  end

  def refresh
    @uas = UserAgent.all.order(:user_agent_string)
    respond_to do |format|
      format.js { render :index }
    end
  end

end
