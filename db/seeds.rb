# real accesses by clients
5.times do
  ua_string = Faker::Lorem.characters(120)
  UserAgent.new_visitor_access(ua_string)
end

# user agents that could have been added by an administrator
2.times do
  ua_string = Faker::Lorem.characters(120)
  UserAgent.create!(:user_agent_string => ua_string)
end
