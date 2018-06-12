class EasyController < ApplicationController
  def step_one
    @TITLE = "ZEnigma"
    if params[:shape] == ["0-0", "0-1", "0-2", "0-3", "0-4", "0-5", "1-4", "2-3", "3-2", "4-1", "5-0", "5-1", "5-2", "5-3", "5-4", "5-5"]
      @TITLE = "Enigma"
      redirect_to easy_step_two_path
    end
  end

  def step_two

  end
end
