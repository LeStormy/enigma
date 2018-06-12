Rails.application.routes.draw do

  devise_for :users
  get 'errors/not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/about', to: "home#about"

  match "/404", :to => "errors#not_found", :via => :all

  get "/easy/step_one" => "easy#step_one"
  get "/easy/step_two" => "easy#step_two"

  resources :easy do
  end
end
