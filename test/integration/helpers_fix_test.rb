require 'test_helper'

class HelpersFixTest < ActiveSupport::IntegrationCase

  test "helpers from plugins should be included in application" do
    visit home_path
    assert_equal "I'm foo! Plugin foo foo.", page.body
  end

end
