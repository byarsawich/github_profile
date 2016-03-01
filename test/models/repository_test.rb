require 'test_helper'

class RepositoryTest < ActiveSupport::TestCase
  private def response
    JSON.parse(File.read('./test/fixtures/mock_profile.json'))
  end

  test "Repository exists" do
    assert Repository
  end

  test "repository created and has attributes" do
    r = Repository.new(response[0])
    assert_equal 26186882, r.id
    assert_equal "axyoms", r.name
    assert_equal "masonfmatthews/axyoms", r.full_name
    assert_equal false, r.private
    assert_equal "Graph-based student evaluation system", r.description
    assert_equal false, r.fork
    assert_equal 43, r.urls.length
  end
end
