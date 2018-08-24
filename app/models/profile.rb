class Profile
  attr_reader :username, :name
  def initialize(attributes)
    @username = attributes[:login]
    @name = attributes[:name]
  end
end
