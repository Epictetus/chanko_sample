class ArticlesController < ApplicationController
  ext_action(:article_deletion, :destroy)

  def index
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      redirect_to top_path
    else
      render :action => 'index'
    end
  end
end
