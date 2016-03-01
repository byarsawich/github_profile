require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  private def response
    JSON.parse(File.read('./test/fixtures/mock_profile.json'))
  end
  
  test "profile exists" do
    assert Profile
  end

  test "profile has owner and array of repositories" do
    p = Profile.new(response)
    assert p.owner
    assert p.repositories
  end

end
