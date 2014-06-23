Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api do
    namespace :v1 do
      resources :projects do
        resources :stories
      end
    end
  end

  root to: redirect('/admin')
end
