# frozen_string_literal: true

require "test_helper"

class BannerComponentTest < ViewComponent::TestCase
  def test_component_renders_correctly
    # Render the component
    rendered_component = render_inline(BannerComponent.new)

    assert_includes rendered_component.to_html, "https://github.com/user-attachments/assets/ccebd1ba-1b9e-4d61-9ffc-5caefad25c3f"
    assert_includes rendered_component.to_html, "https://i.pinimg.com/564x/59/f3/16/59f3168b5b459eb40968234d1ea86bfb.jpg"
    
    assert_selector "div.avatar" do
      assert_selector "img[src='https://github.com/user-attachments/assets/ccebd1ba-1b9e-4d61-9ffc-5caefad25c3f']"
    end
    
    assert_selector "figure" do
      assert_selector "img[src='https://i.pinimg.com/564x/59/f3/16/59f3168b5b459eb40968234d1ea86bfb.jpg']"
    end
  end
end
