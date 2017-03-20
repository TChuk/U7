Rails.application.routes.draw do
  get '/', to: 'finder#index', as: 'index'

  get 'customers/alphabetized', to: 'finder#alphabetized', as: 'ordered'

  get 'customers/missing_email', to: 'finder#missing_email', as: 'email'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root to: 'finder#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
