class NgItemsController < ApplicationController
  before_action :set_user
  before_action :set_ng_item, only: %i(show edit update destroy)
  before_action :logged_in_user
  before_action :correct_user
  
  def index
    @ng_items = @user.ng_items
  end

  def show
  end

  def new
    @ng_item = NgItem.new
  end
  
  def create
    @ng_item = @user.ng_items.build(ng_item_params)
    if @ng_item.save
      flash[:success] = "現場で投薬を新規作成しました！現場からは以上です！"
      redirect_to user_ng_items_url @user
    else
      render :new
    end
  end

  def edit
    
  end
  
  def update
    if @ng_item.update_attributes(ng_item_params)
      flash[:success] = "現場で投薬を更新しました。現場からは以上です！"
      redirect_to user_ng_items_url(@user, @ng_item)
    else
      render :edit
    end
  end
  
  def destroy
    @ng_item.destroy
    flash[:success] = "現場で投薬を削除しました。現場からは以上です！"
    redirect_to user_ng_items_url @user
  end
  
  
  private

    def ng_item_params
      params.require(:ng_item).permit(:name, :company, :store, :description)
    end
    
    def set_user
      @user = User.find(params[:user_id])
    end

    def set_ng_item
      unless @ng_item = @user.ng_items.find_by(id: params[:id])
        flash[:danger] = "権限がありません。"
        redirect_to user_ng_items_url @user
      end
    end
end
