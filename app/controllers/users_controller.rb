class UsersController < ApplicationController
  decorates_assigned :user, :users

  def index
    @users = User.all.paginate(page: params[:page])
  end
end
