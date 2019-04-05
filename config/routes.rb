Rails.application.routes.draw do
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
end
