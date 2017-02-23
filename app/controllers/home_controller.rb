class HomeController < ApplicationController
  def index
    if user_signed_in?
      @nations = current_user.nations.order('id desc').paginate(:per_page => 5, :page => params[:page])
    end
  end
end
