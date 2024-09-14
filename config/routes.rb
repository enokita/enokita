Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  resources :diary_entries
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
    get 'saunas/:tweet_id/likes' => 'likes#create'
    get 'saunas/:tweet_id/likes/:id' => 'likes#destroy'
    resources :saunas do
    resources :likes, only: [:create, :destroy]
  end
  root 'saunas#index'
end
