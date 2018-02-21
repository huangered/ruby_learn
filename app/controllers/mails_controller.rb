class MailsController < ApplicationController
  before_action :authenticate_user!

  def index
    @user = current_user
    puts @user
    puts @user.id
    puts @user.email
  end

end
