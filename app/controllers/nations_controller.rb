class NationsController < ApplicationController
  before_action :authenticate_user!
  def new
    @nation = Nation.new
  end

  def create
    @user = current_user
    @nation = @user.nations.new(nation_params)
    if @nation.save
      flash[:notice] = "Nation Created"
      redirect_to nation_path(@nation)
    else
      flash[:alert] = "Nation Not Created, Clean up your country"
      render :new
    end
  end

  def show
    @nation = Nation.find(params[:id])
    if current_user.nations.include?(@nation)
      render :show
    else
      redirect_to root_path
    end
  end

private
  def nation_params
    params.require(:nation).permit(:name, :government, :economy, :geography)
  end

end
