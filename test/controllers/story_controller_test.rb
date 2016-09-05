require 'test_helper'

class StoryControllerTest < ActionDispatch::IntegrationTest
  test "should get stories" do
    get story_stories_url
    assert_response :success
  end

end
