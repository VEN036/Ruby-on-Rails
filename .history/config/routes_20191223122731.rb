Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users, controllers: { registrations: "registrations" }
  root 'home#index'

  resources :quizzes
  get '/quizzes/:id/leaderboard' => "quizzes#leaderboard"
  post '/quizzes/:id' => 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
