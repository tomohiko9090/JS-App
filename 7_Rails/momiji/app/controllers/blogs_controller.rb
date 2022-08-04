class BlogsController < ApplicationController
  def index
    keyword = params[:keyword]
    @blogs = Blog.order(:id)
    if keyword.present? #空白かnilでtrue判定
      @blogs = @blogs.where('body LIKE ?', "%#{keyword}%")
    end
  end

  def show
    @blog = Blog.find(params[:id])
    p @blog 
  end

  def edit
    @blog = Blog.find(params[:id])
  end

  def new
    @blog = Blog.new
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save()
      redirect_to blogs_path
    else
      render 'new'
    end
  end

  def update
    @blog = Blog.find(params[:id])
    if @blog.update(blog_params) #updateが成功した場合
      redirect_to blogs_path
    else
      render "edit" #updateが失敗した場合
    end
  end


  def destroy
    @blog = Blog.find(params[:id])
    @blog.destroy
    redirect_to blogs_path
  end

  private
  def blog_params
    params.require(:blog).permit(:name, :title, :body)
  end

end
