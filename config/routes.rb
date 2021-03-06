Highlights::Application.routes.draw do
  devise_for :users, :path => 'accounts'

  resources :users do
    resources :highlights, :except => [:index, :destroy, :edit, :update]
  end
  
  resources :highlights, :only => [:index]
  
  root :to => "StaticPages#index"
end
