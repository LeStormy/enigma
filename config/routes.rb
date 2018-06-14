Rails.application.routes.draw do

  devise_for :users
  get 'errors/not_found'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/about', to: "home#about"
  get '/leaderboard', to: "home#leaderboard"
  get '/levels', to: "home#levels"

  match "/404", :to => "errors#not_found", :via => :all

  ## EASY LEVELS ##
  get "/easy/step_one" => "easy#step_one"
  get "/easy/step_two" => "easy#step_two"
  get "/easy/atlanta" => "easy#atlanta"
  get "/easy/step_three" => "easy#step_three"
  get "/easy/step_four" => "easy#step_four"
    ### THE RIDDLE ###
    get "/easy/riddle/voiceless" => "easy#riddle_voiceless"
    get "/easy/riddle/it_cries" => "easy#riddle_it_cries"
    get "/easy/riddle/wingless" => "easy#riddle_wingless"
    get "/easy/riddle/flutters" => "easy#riddle_flutters"
    get "/easy/riddle/touchless" => "easy#riddle_touchless"
    get "/easy/riddle/bites" => "easy#riddle_bites"
    get "/easy/riddle/mouthless" => "easy#riddle_mouthless"
    get "/easy/riddle/mutters" => "easy#riddle_mutters"
    get "/easy/riddle/key" => "easy#riddle_key"
    ###
  get "/easy/step_five" => "easy#step_five"
  get "/easy/step_six" => "easy#step_six"
  get "/easy/step_seven" => "easy#step_seven"
  get "/easy/step_eight" => "easy#step_eight"
  get "/easy/step_nine" => "easy#step_nine"
  get "/easy/step_ten" => "easy#step_ten"
  get "/easy/step_eleven" => "easy#step_eleven"
  get "/easy/step_twelve" => "easy#step_twelve"
  get "/easy/congrats" => "easy#congrats"


  ## MEDIUM LEVELS ##
  get "/medium/1" => "medium#level_1"


  ## HARD LEVELS ##
  get "/hard/level_1" => "hard#level_1"


  ## INSANE LEVELS ##



end
