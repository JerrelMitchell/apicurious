class DashboardController < ApplicationController
  def show
    @starred_repos = GitHubUser.new(current_user).starred_repos
    @following     = GitHubUser.new(current_user).following
    @followers     = GitHubUser.new(current_user).followers
  end
end
