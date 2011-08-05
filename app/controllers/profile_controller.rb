class ProfileController < ApplicationController
  def show
    @current_user = current_user
    @address = current_user.address
  end
end