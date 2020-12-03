class UsersController < ApplicationController
  def show
    @word = Word.new
    @user = current_user
    @categories = current_user.words.map(&:category).uniq.map(&:name)
  end
end
