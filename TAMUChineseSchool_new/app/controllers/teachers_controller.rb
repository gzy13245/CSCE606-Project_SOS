class TeachersController < ApplicationController
  def new
    @users=User.all
    @tmp="12333"
  end

  def create

    @teacher = Teacher.new(params[:user_id])

    @teacher.save
    redirect_to @teacher
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
    redirect_to post_path(@post)
  end

  def show

  end

  def index
    @teachers = Teacher.all
  end



end
