Rails.application.routes.draw do
  root to: 'root#show'

  mount Slack::Engine, at: '/slack'
end
