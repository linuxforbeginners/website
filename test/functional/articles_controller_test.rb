require "test_helper"

class ArticlesControllerTest < ActionDispatch::IntegrationTest
  test "get articles successfully" do
    get "/articles"
    assert_response :success
  end
  test "shows articles content" do
    get "/articles"
    assert_select ".page-content h1", "Articles"
    assert_select ".page-content a", "New Article"
    assert_select ".page-content a[href=\"/articles/new\"]"
  end
  test "can create article" do
    post "/articles",
         params: { article: { title: "can create", body: "article successfully.", status: "public" } },
         headers: { Authorization: ActionController::HttpAuthentication::Basic.encode_credentials("admin", "password") }
    assert_response :redirect
    follow_redirect!
    assert_response :success
    assert_select ".article-content p", "article successfully."
    assert_select ".page-content h1:nth-of-type(1)", "can create"
  end
end
