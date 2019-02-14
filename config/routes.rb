Rails.application.routes.draw do
  namespace :api, defaults: { format: :json }, path: '/' do
    namespace :v1, path: '/' do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end
end
