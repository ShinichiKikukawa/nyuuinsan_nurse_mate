class TasksController < ApplicationController
  before_action :set_user
  before_action :set_task, only: %i(show edit update destroy)
  before_action :logged_in_user
  before_action :correct_user
  
  def index
    @tasks = @user.tasks
  end

  def show
  end

  def new
    @task = Task.new
  end
  
  def create
    @task = @user.tasks.build(task_params)
    @task.image.attach(params[:task][:image]) if params[:task][:image].present?
  
    if @task.save
      flash[:success] = "現場で電子カルテを新規作成しました！現場からは以上です！"
      redirect_to user_tasks_url @user
    else
      render :new
    end
  end

  def edit
    
  end
  
  def update
    if @task.update_attributes(task_params)
      flash[:success] = "現場で電子カルテを更新しました。現場からは以上です！"
      redirect_to user_task_url(@user, @task)
    else
      render :edit
    end
  end
  
  def destroy
    @task.destroy
    flash[:success] = "現場で電子カルテを削除しました。現場からは以上です！"
    redirect_to user_tasks_url @user
  end
  
  
  private

    def task_params
      params.require(:task).permit(:name, :company, :store, :description)
    end
    
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_task
      unless @task = @user.tasks.find_by(id: params[:id])
        flash[:danger] = "権限がありません。"
        redirect_to user_tasks_url @user
      end
    end
end
