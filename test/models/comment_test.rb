require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "should not save comment without username and content" do
    article = Article.new({ "title" => "This is a test", "body" => "This is a comment testing article", "status" => "public" })
    if article.save
      assert !article.comments.create.valid?, "Comment saved without username and content"
    else
      assert false, "Article saving error"
    end
  end

  test "should not save comment without username but content" do
    article = Article.new({ "title" => "This is a test 2", "body" => "This is a comment testing article", "status" => "public" })
    if article.save
      assert !article.comments.create({ "body" => "Hello, world!" }).valid?, "Comment saved without username"
    else
      assert false, "Article saving error"
    end
  end
end
