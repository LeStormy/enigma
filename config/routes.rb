Rails.application.routes.draw do

  devise_for :users
  get 'errors/not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/about', to: "home#about"
  get '/leaderboard', to: "home#leaderboard"

  match "/404", :to => "errors#not_found", :via => :all

  get "/easy/step_one" => "easy#step_one"
  get "/easy/step_two" => "easy#step_two"
  get "/easy/step_three" => "easy#step_three"
  get "/easy/step_four" => "easy#step_four"
  get "/easy/step_five" => "easy#step_five"
  get "/easy/step_six" => "easy#step_six"
  get "/easy/step_seven" => "easy#step_seven"
  get "/easy/step_eight" => "easy#step_eight"
  get "/easy/step_nine" => "easy#step_nine"
  get "/easy/step_ten" => "easy#step_ten"
  get "/easy/step_eleven" => "easy#step_eleven"
  get "/easy/step_twelve" => "easy#step_twelve"

  resources :easy do
  end
end
