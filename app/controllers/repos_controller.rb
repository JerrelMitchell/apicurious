class ReposController < ApplicationController
  def index
    @repos = GitHubUser.new(current_user).repos
  end
end
