class TweetsController < ApplicationController
  before_action :move_to_index, except: :index
  before_action :set_tweet, only: [:edit, :update, :destroy]

  def index
    @tweet = Tweet.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end
  
  def create
    Tweet.create(image: tweet_params[:image], text: tweet_params[:text], user_id: current_user.id)
  end

  def destroy
    if tweet.user_id == current_user.id
      tweet.destroy
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    if @tweet.user_id == current_user.id
      @tweet.update(tweet_params)
      redirect_to root_path
    end
  end

  
  private
  def tweet_params
    params.permit(:text, :image)
  end
  
  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
