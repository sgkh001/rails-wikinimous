class ArticlesController < ApplicationController

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    # create article with the params
    @article = Article.new(article_params)
    # save
    @article.save!
    # redirect to show of article
    redirect_to article_path(@article)
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    redirect_to article_path(@article)
  end

  def destroy
    # find article
    @article = Article.find(params[:id])
    # destroy article
    @article.destroy
    # redirect to article index to see result
    redirect_to root_path, status: :see_other
  end

  private

  def article_params
    params.require(:article).permit(:title, :content)
  end
end
