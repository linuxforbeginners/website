class CommentsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "password", except: [:create]

  def create
    puts comment_params
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    if @comment.valid?
      redirect_to article_path(@article)
    else
      redirect_to article_path(@article)
    end
    render :create
  end

  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article)
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end

end

