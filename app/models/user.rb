class User < ApplicationRecord
  def self.from_omniauth(info)
    user = find_or_create_by(uid: info[:uid]) do |new_user|
      new_user.uid         = info.extra.raw_info.id
      new_user.name        = info.extra.raw_info.name
      new_user.username    = info.extra.raw_info.login
      new_user.avatar_url  = info.extra.raw_info.avatar_url
      new_user.oauth_token = info.credentials.token
    end
    user.update(username: info.extra.raw_info.login,
                avatar_url: info.extra.raw_info.avatar_url,
                oauth_token: info.credentials.token)
    user
  end
end
