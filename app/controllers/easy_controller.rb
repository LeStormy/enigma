class EasyController < ApplicationController
  before_action :authenticate_user!
  def step_one
    if current_user.level_value < 1
      redirect_to "/404"
    end
    @TITLE = "ZEnigma"
    if params[:shape] == ["0-0", "0-1", "0-2", "0-3", "0-4", "0-5", "1-4", "2-3", "3-2", "4-1", "5-0", "5-1", "5-2", "5-3", "5-4", "5-5"]
      @TITLE = "Enigma"
      current_user.update!(current_level: "/easy/step_two", level_value: 2)
      redirect_to easy_step_two_path
    end
  end

  def step_two
    if current_user.level_value < 2
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_three", level_value: 3)
#      redirect_to step_three_path
#    end
  end

  def step_three
    if current_user.level_value < 3
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_four", level_value: 4)
#      redirect_to step_four_path
#    end
  end

  def step_four
    if current_user.level_value < 4
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_five", level_value: 5)
#      redirect_to step_five_path
#    end
  end

  def step_five
    if current_user.level_value < 5
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_six", level_value: 6)
#      redirect_to step_six_path
#    end
  end

  def step_six
    if current_user.level_value < 6
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_seven", level_value: 7)
#      redirect_to step_seven_path
#    end
  end

  def step_seven
    if current_user.level_value < 7
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_eight", level_value: 8)
#      redirect_to step_eight_path
#    end
  end

  def step_eight
    if current_user.level_value < 8
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_nine", level_value: 9)
#      redirect_to step_nine_path
#    end
  end

  def step_nine
    if current_user.level_value < 9
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_ten", level_value: 10)
#      redirect_to step_ten_path
#    end
  end

  def step_ten
    if current_user.level_value < 10
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_eleven", level_value: 11)
#      redirect_to step_eleven_path
#    end
  end

  def step_eleven
    if current_user.level_value < 11
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_twelve", level_value: 12)
#      redirect_to step_twelve_path
#    end
  end


###
### ETC, ETC...
###

end
