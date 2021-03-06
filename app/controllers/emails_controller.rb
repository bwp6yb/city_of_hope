class EmailsController < ApplicationController

  def create
    LeaderMailer.community_email(params[:email]).deliver()
    flash[:success] = "A leader was notified of your interest!"
    redirect_to root_path
  end

  def create
  	LeaderMailer.service_email(params[:email]).deliver()
    flash[:success] = "A leader was notified of your interest!"
    redirect_to root_path
  end
end
