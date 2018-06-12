class HomeController < ApplicationController
  before_action :authenticate_user!

  def index
    @TITLE = "Enigma"
    if (params[:answer].present?)
      if (params[:answer].downcase == "stormy")
        redirect_to easy_step_one_path
      end
    end
  end
end
