class PicsController < ApplicationController
  before_action :find_pic, only: [:show, :edit, :update, :destroy, :upvote]
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @pics = Pic.all.order("created_at DESC")
  end

  def show
  end

  def new
    @pic =Pic.new
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save
      redirect_to @pic, notice: "Picture Posted!"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @pic.update(pic_params)
      redirect_to @pic, notice: "Pic updated"
    else
      render 'edit'
    end
  end

  def destroy
    @pic.destroy
    redirect_to root_path
  end

  def upvote
    @pic.upvote_by current_user
    redirect_back fallback_location: @pic
  end

  private

  def pic_params
    params.require(:pic).permit(:title,:description, :user_id, :image)
  end

  def find_pic
      @pic = Pic.find(params[:id])
  end
end
