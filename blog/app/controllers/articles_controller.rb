class ArticlesController < ApplicationController

	def new
	end

def create
  @article = Article.new(articles_params)
 
  @article.save
  redirect_to @article
end

def show
  @article = Article.find(params[:format])
end

def index
  @articles = Article.all
end
 
private
  def articles_params
    params.require(:articles).permit(:title, :text)
  end



	

end
