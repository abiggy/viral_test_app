class TwitterAccountsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  
  # Don't think need to have index.
  def index
    
    @twitter_account = current_user.twitter_accounts.build(params[:twitter_account])
    if @twitter_account.save
      flash[:success] = "Twitter account added!"
      redirect_to root_url
    else
      render 'static_pages/home'
    end
  end

  def create
    @twitter_account = current_user.twitter_accounts.build(params[:twitter_account])
    if @twitter_account.save
      flash[:success] = "Twitter account added!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @twitter_account.destroy
    redirect_to root_url
  end

  private

    def correct_user
      @twitter_account = current_user.twitter_accounts.find_by_id(params[:id])
      redirect_to root_url if @twitter_account.nil?
    end
end
