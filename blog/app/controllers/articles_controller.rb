class ArticlesController < ApplicationController

	def new
	end

def create
  @articles = Article.new(articles_params)
 
  @articles.save
  redirect_to @articles
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
