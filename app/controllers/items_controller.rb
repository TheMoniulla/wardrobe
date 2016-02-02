class ItemsController < ApplicationController
  before_action :get_user
  before_action :get_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = @user.items
  end

  def new
    @item = @user.items.new
  end

  def show
  end

  def edit
  end

  def create
    @item = @user.items.new(item_params)
    if @item.save
      redirect_to user_items_path
    else
      render :new
    end
  end

  def update
    if @item.update_attributes(item_params)
      redirect_to user_items_path(@user)
    else
      render :edit
    end
  end

  def destroy
    @item.destroy
    redirect_to user_items_path
  end

  private

  def get_user
    @user = User.find(params[:user_id])
  end

  def get_item
    @item = @user.items.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :item_type, :user_id, :size, occasion_ids: [], season_ids: [])
  end
end