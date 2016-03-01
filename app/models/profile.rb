class Profile
  attr_reader :owner, :repositories, :response
  def initialize(username)
    @response = HTTParty.get("https://api.github.com/users/#{username}/repos?access_token=#{ENV["GITHUB_TEMP_TOKEN"]}")
    # @response = JSON.parse(File.read('./test/fixtures/mock_profile.json'))
    @owner = Owner.new(response[0]["owner"])
    @repositories = []
    response.each do |r|
      @repositories << Repository.new(r)
    end
  end
end
