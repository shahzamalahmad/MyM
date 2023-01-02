class ArticlesController < ApplicationController
  def index
    @articles = Article.all
    @imam = User.all.where(role: "imam").pluck(:email)
    @imam_name = User.all.where(role: "imam")
    @imam_full_name = @imam_name.pluck(:first_name)
    # .to_s + " " + @imam_name.pluck(:last_name).to_s
    # @user = User.all.where(role: "imam")
  

    
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
