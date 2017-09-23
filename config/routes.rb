Rails.application.routes.draw do
  root to: 'root#show'

  #-------------------
  # ENGINES
  #-------------------
  mount Slack::Engine, at: '/slack'

  #-------------------
  # MAIN APP
  #-------------------

  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
end
