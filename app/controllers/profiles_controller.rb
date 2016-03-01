class ProfilesController < ApplicationController
  def ask
  end

  def display
    profile = Profile.new(params[:username])
  end
end
