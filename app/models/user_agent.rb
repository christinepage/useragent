class UserAgent < ApplicationRecord
  validates :user_agent_string, :uniqueness => true, :presence => true

  def self.new_visitor_access(ua_str)
    access_time = Time.now
    UserAgent.create!(:user_agent_string => ua_str,
                      :counter => 1,
                      :first_visit => access_time,
                      :last_visit => access_time)
  end

  def repeat_visitor_access
    self.counter +=1
    self.last_visit = Time.now
    self.save
  end

end
