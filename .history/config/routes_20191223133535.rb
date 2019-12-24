Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount RailsAdminImport::Engine => '/rails_admin_import', :as => 'rails_admin_import'
  devise_for :users, controllers: { registrations: "registrations" }

  scope "/admin" do 
    resources :users
  end

  root 'home#index'

  resources :quizzes
  get '/quizzes/:id/leaderboard' => "quizzes#leaderboard"
  post '/quizzes/:id' => "quizzes#check_answer"

  get '/home/leaderboard' => "home#user_board"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
