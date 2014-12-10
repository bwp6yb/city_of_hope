class EmailsController < ApplicationController

  def create
    LeaderMailer.community_email(params[:email]).deliver()
  end

  def create
  	LeaderMailer.service_email(params[:email]).deliver()
  end
end
