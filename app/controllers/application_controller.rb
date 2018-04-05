class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :track_user_agent

  def track_user_agent
    if ua = UserAgent.find_by_user_agent_string(request.user_agent)
      ua.repeat_visitor_access
    else
      UserAgent.new_visitor_access(request.user_agent)
    end
  end

end
