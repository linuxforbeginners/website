require "test_helper"

class CommentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save comment without username and content" do
    article = Article.new title: "This is a test", body: "This is a comment testing article"
    if article.save
      assert !article.comments.create, "Comment saved without username and content"
    end
  end

  test "should not save comment without username but content" do
    article = Article.new title: "This is a test 2", body: "This is a comment testing article"
    if article.save
      assert !article.comments.create(body: "Hello, world!"), "Comment saved without username"
    end
  end
end
