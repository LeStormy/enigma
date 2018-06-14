class HomeController < ApplicationController
  def index
    @TITLE = "Enigma"
    if (params[:answer].present?)
      if (params[:answer].downcase == "stormy")
        LevelUser.create!(user_id: current_user.id, level_id: 1)
        current_user.update!(current_level: "/easy/step_one", level_value: 1)
        redirect_to easy_step_one_path
      end
    end
  end

  def leaderboard
    @scores = User.all.order(level_value: :desc).pluck(:username, :level_value)
  end

  def levels
    if current_user.present?
      @userlevels = Level.where(id: LevelUser.where(user_id: current_user).pluck(:level_id))
      @levels = Level.all.order(:level_number)
    end
  end
end
