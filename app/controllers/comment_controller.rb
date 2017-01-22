class CommentController < ApplicationController
  def create
    @articles = Articles.find(params[:article_id])
    @comment = @articles.comments.create(params[:comment].permit(:email, :body))
    redirect_to article_path(@articles)
  end
end
