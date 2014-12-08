class EmailsController < ApplicationController
  def create
    LeaderMailer.community_email(params[:email]).deliver()
  end
end
