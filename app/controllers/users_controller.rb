class UsersController < ApplicationController
  def show
    @user = current_user
    @categories = current_user.words.map(&:category).uniq.map(&:name)
  end
end
