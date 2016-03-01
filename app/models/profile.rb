class Profile
  attr_reader :owner, :repositories
  def initialize(response)
    @owner = ""
    @repositories = []
  end
end
