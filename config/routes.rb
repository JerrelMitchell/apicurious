Rails.application.routes.draw do
  root 'welcome#index'

  get '/auth/github', as: :github_login
  get '/auth/github/callback', to: 'sessions#create'

  get '/:username', to: 'dashboard#show'
  get '/:username/repos', to: 'repos#index'
end
