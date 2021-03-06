require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "should not save article without title and content" do
    article = Article.new
    assert !article.save, "Article saved without title and content"
  end

  test "should not save article with content under 10 characters" do
    article = Article.new({ "body" => "123456789", "title" => "under 10 characters", "status" => "public" })
    assert !article.save, "Article saved with under 10 characters"
  end

  test "should not save article without title but with content" do
    article = Article.new({ "body" => "The content of the post", "status" => "public" })
    assert !article.save, "Article saved without title but with content"
  end

  test "should save article" do
    article = Article.new({ "title" => "Test!", "body" => "The content of the post", "status" => "public" })
    assert article.save, "Article did not save"
  end
end
