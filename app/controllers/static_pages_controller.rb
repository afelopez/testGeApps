class StaticPagesController < ApplicationController
  before_action :check_user_logged_in!, :only => [:index]

  
  def home
  end
  def index
    @paths = Path.all
  end

  private

  def check_user_logged_in!
    authenticate_user!
  end
end
