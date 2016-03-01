require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  private def response
    JSON.parse(File.read('./test/fixtures/mock_profile.json'))
  end

  test "profile exists" do
    assert Profile
  end

  test "profile has owner and array of repositories" do
    pro = Profile.new(response)
    assert pro.owner
    assert pro.repositories
  end

  test "profile will keep an array of all repositories in response" do
    pro = Profile.new(response)
    assert_equal 14, pro.repositories.count
  end

end
