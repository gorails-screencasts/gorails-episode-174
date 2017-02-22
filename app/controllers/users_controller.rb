class UsersController < ApplicationController
  def index
    @users = User.all
    @user_decorators = @users.map{ |user| UserDecorator.new(user, view_context) }
  end
end
