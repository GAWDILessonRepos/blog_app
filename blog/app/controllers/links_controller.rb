class LinksController < ApplicationController


  def index
    @links = Link.all
  end

  def show
    @link = Link.find(params[:id])
  end

  def new
    @link = Link.new
  end

  def edit
    @article = @article = Article.find(params[:article_id])
    @link = Link.find(params[:id])
  end

  def destroy
    @article = Article.find(params[:article_id])
    @link = @article.links.find(params[:id])
    @link.destroy
    redirect_to article_path(@article)
  end

  def create
    @article = Article.find(params[:article_id])
    @link = @article.links.create(link_params)
    redirect_to article_path(@article)
  end

  def update
    @article = Article.find(params[:article_id])
    @link = Link.find(params[:id])

    if @link.update(link_params)
      redirect_to article_path(@article)
    else
      render 'edit'
    end
  end

  private

    def link_params
      params.require(:link).permit(:title, :url)
    end
end
