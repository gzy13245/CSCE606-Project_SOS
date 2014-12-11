class TeachersController < ApplicationController

  def new
    @users=User.all
    #@data = 1
  end

  def create
    @teacher = Teacher.new(user_id: params[:teacher][:user_id])

    @teacher.save
    redirect_to @teacher
  end

#  def create
#    @post = Post.find(params[:post_id])
#    @comment = @post.comments.create(params[:comment].permit(:commenter, :body))
#    redirect_to post_path(@post)
#  end

  def show
    redirect_to action: "index"
  end

  def index
    @teachers = Teacher.all
  end

  def destroy
    @teacher = Teacher.find(params[:id])
    @teacher.destroy

    redirect_to teachers_path
  end

end
