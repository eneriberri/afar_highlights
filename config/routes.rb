Highlights::Application.routes.draw do
  devise_for :users, :path => 'accounts'

  resources :users do
    resources :highlights
  end
  
  root :to => "StaticPages#index"
end
