class MailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    puts @user
    puts @user.id
    puts @user.email
    @notifies = Notify.all
  end

  def markRead
  	@notify = Notify.find(params[:id])
  	@notify.readed = true
  	@notify.save
  end
end
