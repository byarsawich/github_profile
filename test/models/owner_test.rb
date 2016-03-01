require 'test_helper'

class OwnerTest < ActiveSupport::TestCase
  private def response
    JSON.parse(File.read('./test/fixtures/mock_profile.json'))
  end

  test "owner exists" do
    assert Owner
  end

end
