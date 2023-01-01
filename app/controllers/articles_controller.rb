class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    # @count = Article.where('created_at > ?', 12.hours.ago).group_by {|u| u.created_at.strftime("%I:%p") }.transform_values {|v| {article: v.group_by {|u| u.id}.transform_values {|v| v.count }} }
    # if 
      # @count = Article.where('created_at > ?', 12.hours.ago).group_by {|u| u.created_at.strftime("%I:%p") }
    # else Article.present!


    # end

    
  end

  def show
    @article = Article.find(params[:id])
  end

  def about
   
  end

  def login
    
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
    # binding.pry
    @article = Article.find(params[:id])
    @article.destroy

    if @article.save
      redirect_to root_path, status: :see_other
    end
  end



   private
    def article_params
      params.require(:article).permit(:mosque_name, :address, :mobile_no, :mutawalli_name, :imam_name, :requirement, :user_id)
    end
end
