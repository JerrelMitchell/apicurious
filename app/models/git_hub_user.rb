class GitHubUser
  def initialize(user)
    @user = user
  end

  def repos
    ReposService.new(user).repos
  end

  def following
    FollowingService.new(user).following
  end

  def followers
    FollowerService.new(user).followers
  end

  def starred_repos
    StarredReposService.new(user).starred_repos
  end

  private

  attr_reader :user
end
