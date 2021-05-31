require "test_helper"

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "get index successfully" do
    get "/"
    assert_response :success
  end
  test "shows index content" do
    get "/"
    assert_select "h1.title", "Home"
    assert_select "p.intro"
    assert_select "div.page-content"
  end
  test "shows navbar on index" do
    get "/"
    assert_select ".navbar"
    assert_select ".navbar .text", "Linux for beginners"
    assert_select ".navbar .items"
    assert_select ".navbar .brand"
  end
  test "get about successfully" do
    get "/about"
    assert_response :success
  end
  test "shows about content" do
    get "/about"
    assert_select "h1.title", "About"
    assert_select "strong.wordmark", "Linux for beginners"
    assert_select ".box:nth-of-type(1) .stitle", "Why you should use Linux"
    assert_select ".box:nth-of-type(2) .stitle", "Why I created this page"
  end
  test "shows navbar on about" do
    get "/about"
    assert_select ".navbar"
    assert_select ".navbar .text", "Linux for beginners"
    assert_select ".navbar .items"
    assert_select ".navbar .brand"
  end
end
