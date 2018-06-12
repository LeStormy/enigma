class HomeController < ApplicationController
  def index
    @TITLE = "Enigma"
    if (params[:answer].present?)
      if (params[:answer].downcase == "stormy")
        current_user.update!(current_level: "/easy/step_one", level_value: 1)
        redirect_to easy_step_one_path
      end
    end
  end

  def leaderboard
    @scores = User.all.order(level_value: :desc).pluck(:username, :level_value)
  end
end
