class UsersController < ApplicationController
  def index
    @users = User.all
    respond_to do |fmt|
      fmt.html
      fmt.json { render :json => @users.to_json }
    end
  end

  def show
    youtube_client = YouTubeIt::Client.new
    @user = User.find(params[:id])
    respond_to do |fmt|
      fmt.html
      fmt.json { render :json => @user.videos.to_json }
    end
  end
end
