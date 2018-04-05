Rails.application.routes.draw do
  resources :user_agents, only: [:index]
  root :to => 'user_agents#index'
  get '/user_agents/refresh'
end
