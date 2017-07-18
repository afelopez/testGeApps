class StaticPagesController < ApplicationController
  before_action :check_user_logged_in!, :only => [:index]

  def home
  end
  def index
    s = "%#{params[:search]}%"
    if params[:search]
      d = Path.joins(:vehicle).where('plate LIKE ?', s) + Path.joins(:passenger).where('name LIKE ? ', s)
    else
      d = Path.all
    end
    @paths = d.paginate(page: params[:page], per_page: 15)
  end

  private

  def check_user_logged_in!
    authenticate_user!
  end
end
