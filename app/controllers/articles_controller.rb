class ArticlesController < ApplicationController
  def new
      @article = Article.new
  end

  def index
      @articles = Article.all
  end  

  def create
      @article = Article.new(params.require(:article).permit(:title, :text))
      if @article.save
        redirect_to @article
      else
        render 'new'
      end
  end

  def show
    @article = Article.find(params[:id])
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
end