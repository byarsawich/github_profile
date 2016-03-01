class ProfilesController < ApplicationController
  def ask
  end

  def authenticate
    githubresponse = HTTParty.get("https://github.com/login/oauth/authorize?client_id=#{ENV["GITHUB_CLIENT_ID"]}&redirect_uri=http://localhost:3000/profiles/display/#{params[:username]}&scope=repos")
    render githubresponse
  end

  def display
    # getAuth = HTTParty.post("https://github.com/login/oauth/access_token?client_id=#{ENV["GITHUB_CLIENT_ID"]}&client_secret=#{ENV["GITHUB_CLIENT_SECRET"]}&code=#{params["code"]}")
    @profile = Profile.new(params[:username]) #, getAuth["access_token"])
  end
end
