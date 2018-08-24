class Repo
  attr_reader :name,
              :owner,
              :description

  def initialize(attributes)
    @name = attributes[:name]
    @owner = attributes[:owner][:login]
    @description = attributes[:description]
  end
end
