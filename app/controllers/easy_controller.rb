class EasyController < ApplicationController
  before_action :authenticate_user!
  def step_one
    if !LevelUser.find_by(user_id: current_user.id, level_id: 1).present?
      redirect_to "/404"
    end
    @TITLE = ENV["STEP_ONE_TITLE"]
    puts ENV["STEP_ONE_KEY"]
    if params[:shape].to_s == ENV["STEP_ONE_KEY"]
      @TITLE = "Enigma"
      if current_user.level_value < 2
        LevelUser.create!(user_id: current_user.id, level_id: 2)
        current_user.update!(current_level: "/easy/step_two", level_value: 2)
      end
      redirect_to easy_step_two_path
    end
  end

  def step_two
    if !LevelUser.find_by(user_id: current_user.id, level_id: 2).present?
      redirect_to "/404"
    end
  end

  def step_three
    if !LevelUser.find_by(user_id: current_user.id, level_id: 3).present?
      redirect_to "/404"
    end

    @please = false
    if params[:input].present?
      if params[:input].downcase == "actually visible"
        if current_user.level_value < 4
          LevelUser.create!(user_id: current_user.id, level_id: 4)
          current_user.update!(current_level: "/easy/step_four", level_value: 4)
        end
        redirect_to easy_step_four_path
      elsif params[:input].downcase == "invisible"
        @please = true
      else
        params[:input] = ""
      end
    end
  end

  def step_four
    if !LevelUser.find_by(user_id: current_user.id, level_id: 4).present?
      redirect_to "/404"
    end

#    if WIN
#      if current_user.level_value < 5
# =>       current_user.update!(current_level: "/easy/step_five", level_value: 5)
#      end
# =>  redirect_to easy_step_five_path
#    end
  end

  def step_five
    if !LevelUser.find_by(user_id: current_user.id, level_id: 5).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_six", level_value: 6)
#      redirect_to easy_step_six_path
#    end
  end

  def step_six
    if !LevelUser.find_by(user_id: current_user.id, level_id: 6).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_seven", level_value: 7)
#      redirect_to easy_step_seven_path
#    end
  end

  def step_seven
    if !LevelUser.find_by(user_id: current_user.id, level_id: 7).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_eight", level_value: 8)
#      redirect_to easy_step_eight_path
#    end
  end

  def step_eight
    if !LevelUser.find_by(user_id: current_user.id, level_id: 8).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_nine", level_value: 9)
#      redirect_to easy_step_nine_path
#    end
  end

  def step_nine
    if !LevelUser.find_by(user_id: current_user.id, level_id: 9).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_ten", level_value: 10)
#      redirect_to easy_step_ten_path
#    end
  end

  def step_ten
    if !LevelUser.find_by(user_id: current_user.id, level_id: 10).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_eleven", level_value: 11)
#      redirect_to easy_step_eleven_path
#    end
  end

  def step_eleven
    if !LevelUser.find_by(user_id: current_user.id, level_id: 11).present?
      redirect_to "/404"
    end

#    if WIN
#      current_user.update!(current_level: "/easy/step_twelve", level_value: 12)
#      redirect_to easy_step_twelve_path
#    end
  end

  def step_twelve
    if !LevelUser.find_by(user_id: current_user.id, level_id: 12).present?
      redirect_to "/404"
    end

#    if WIN
#      LevelUser.create!(user_id: current_user.id, level_id: 13)
#      current_user.update!(current_level: "/medium/1", level_value: 13)
#      redirect_to easy_congrats_path
#    end
  end

  def congrats

  end

###
### ETC, ETC...
###

### LEVEL UP HELPERS

  def atlanta
    if !LevelUser.find_by(user_id: current_user.id, level_id: 2).present?
      redirect_to "/404"
    end
    if current_user.level_value < 3
      LevelUser.create!(user_id: current_user.id, level_id: 3)
      current_user.update!(current_level: "/easy/step_three", level_value: 3)
    end
    redirect_to easy_step_three_path
  end

  def riddle_key
    if !LevelUser.find_by(user_id: current_user.id, level_id: 4).present?
      redirect_to "/404"
    end
    if params[:input].present?
      if params[:input].downcase == ENV["STEP_FOUR_KEY"] || params[:input].downcase == ENV["STEP_FOUR_KEY_ALT"]
        if current_user.level_value < 5
          LevelUser.create!(user_id: current_user.id, level_id: 5)
          current_user.update!(current_level: "/easy/step_five", level_value: 5)
        end
        redirect_to easy_step_five_path
      else
        params[:input] = ""
      end
    end
  end

end
