class Admin::OccasionsController < Admin::AdminController
  before_action :get_occasion, only: [:show, :edit, :update, :destroy]

  def new
    @occasion = Occasion.new
  end

  def index
    @occasions = Occasion.all
  end

  def show
  end

  def edit
  end

  def create
    @occasion = Occasion.new(occasion_params)
    if @occasion.save
      redirect_to admin_occasions_path
    else
      render :new
    end
  end

  def update
    if @occasion.update_attributes(occasion_params)
      redirect_to admin_occasions_path
    else
      render :edit
    end
  end

  def destroy
    @occasion.destroy
    redirect_to admin_occasions_path
  end

  private

  def get_occasion
    @occasion = Occasion.find(params[:id])
  end

  def occasion_params
    params.require(:occasion).permit(:name)
  end
end