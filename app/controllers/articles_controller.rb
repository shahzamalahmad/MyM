class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def about
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
# binding.pry
    if @article.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  
  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])

    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    binding.pry
    @article = Article.find(params[:id])
    @article.delete

    if @article.save
      redirect_to root_path, status: :see_other
    end
  end



   private
    def article_params
      params.require(:article).permit(:mosque_name, :address, :mobile_no, :mutawalli_name, :imam_name, :requirement, :user_id)
    end
end
