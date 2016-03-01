require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  private def response
    JSON.parse(File.read('./test/fixtures/mock_profile.json'))
  end

  test "owner exists" do
    assert Owner
  end

  test "create new owner and access attributes" do
    o = Owner.new(response[0]["owner"])
    assert_equal "masonfmatthews", o.login
    assert_equal 5350842, o.id
    assert_equal "https://avatars.githubusercontent.com/u/5350842?v=3", o.avatar_url
    assert_equal "https://api.github.com/users/masonfmatthews", o.url
    assert_equal "https://github.com/masonfmatthews", o.html_url
    assert_equal "https://api.github.com/users/masonfmatthews/followers", o.followers_url
    assert_equal "https://api.github.com/users/masonfmatthews/subscriptions", o.subscriptions_url
    assert_equal "https://api.github.com/users/masonfmatthews/orgs", o.organizations_url
    assert_equal "https://api.github.com/users/masonfmatthews/repos", o.repos_url
    assert_equal "https://api.github.com/users/masonfmatthews/received_events", o.received_events_url
    assert_equal "User", o.type
  end
end
