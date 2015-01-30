Rails.application.routes.draw do
  get 'welcome/index'
  root 'welcome#index'

  resources :categories

  resources :articles do
    resources :comments
    resources :links
  end
end
