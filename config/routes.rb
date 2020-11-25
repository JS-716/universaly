Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  #Flashcards is nested in SESSIONS
  #Categories is nested in WORDS
  #Favorite is nested in SESSIONS and WORDS

  resources :users, only: [ :show ]
  resources :exercises, only: [ :new, :create, :show ] do
    resources :flashcards, only: [ :new, :create, :index, :show, :edit, :update ]
    resources :favorites, only: [ :create ]
  end
  resources :words, only: [ :create, :index, :show, :update, :destroy] do
    resources :categories, only: [ :create, :update, :destroy ]
    resources :favorites, only: [ :create ]
  end
end
