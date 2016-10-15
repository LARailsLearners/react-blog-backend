class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    render json: @articles
  end

  def show
    @article = Article.find(params[:id])
    render json: @article
  end

  def create
    @article = Article.new(article_params)
    @article.save
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  end

  def article_params
    params.require(:article).permit(:title, :body)
  end
end
