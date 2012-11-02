class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @new_twitter_account = current_user.twitter_accounts.build
      @twitter_accounts = current_user.twitter_accounts
    end
  end

  def contact
  end
end
