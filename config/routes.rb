Rails.application.routes.draw do
    
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :events
    
  devise_for :users, :controllers => {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }
    
  devise_scope :admin_user do
      get '/admin_users/sign_out' => 'devise/sessions#destroy'
  end

  resources :users, only: [:index, :show, :edit, :update]


  post '/participation/:event_id' => 'participations#participate', as: 'participate'
  delete '/cancel/:event_id' => 'participations#cancel', as: 'cancel'

  root 'toppage#index'
  get '/about' => 'home#about'
end
