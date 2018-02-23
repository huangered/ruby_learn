class PlanController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    @plans = Plan.find(@user.id)
  end

  def new
    @p = Plan.new
  end

  def create
    @p = Plan.new(params.require(:plan).permit(:data, :start_time, :end_time))
    @user = current_user
    @p.user_id=@user.id
    if @p.save
      redirect_to 'index'
    else
      render 'new'
    end
  end

end
