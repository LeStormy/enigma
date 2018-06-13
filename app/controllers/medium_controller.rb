class MediumController < ApplicationController
  before_action :authenticate_user!

  def level_1
    if !LevelUser.find_by(user_id: current_user.id, level_id: 13).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/medium/2", level_value: 14)
#      redirect_to medium_2_path
#    end
  end
end
