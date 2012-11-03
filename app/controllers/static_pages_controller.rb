class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @new_twitter_account = current_user.twitter_accounts.build
      @twitter_accounts = current_user.twitter_accounts
      @test = params[:id]
      
      if params[:id] != nil

        @selected_account = @twitter_accounts.find(params[:id])
        @followers = @selected_account.followers
        @new_follower = @followers.build
        # going to store the current account's list of followers
        session[:account_id] = @selected_account.id
        
        
      else
        @selected_account = nil
        @followers = nil
        @new_follower = nil
      end

      #@selected_account = nil
      #@followers = nil
     # if params[:account] != nil
    #    @selected_account = @twitter_accounts.find(params[:account])
       # @followers = @selected_account.followers
   #   else
   #     @selected_account = @twitter_accounts[1]
       # @followers = @selected_account.followers

      #end
    end
  end

  def contact
  end
end
