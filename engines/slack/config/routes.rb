Slack::Engine.routes.draw do
  resource :auth, only: [:show], controller: 'auth'

  api_version(module: 'V1', path: { value: 'v1' }) do
    resource :messages, only: [:create]
  end
end
