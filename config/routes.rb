Rails.application.routes.draw do

  
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'


  resources :users
  resources :blogs do
    member do
      get :delete
    end
  end
  resources :images do
    member do
      get :delete
    end
  end
  resources :projects do
    member do
      get :delete
    end
  end

  root 'pages#home'
  get 'contact',to:'pages#contact'
  get 'about',to:'pages#about'
  get 'projects_show', to: 'pages#projects'
  get 'pricing', to: 'pages#pricing'


  get 'login', to:'sessions#new'
  post 'login', to:'sessions#create'
  get 'logout', to:'sessions#delete'
end
