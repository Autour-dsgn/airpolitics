class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
  end

  def show
    @politician = Politician.find(params[:id])
  end

  def new
    @politician = Politician.new
  end

  def create
    @politician = Politician.new(politician_params)
    if @politician.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def politician_params
    params.require(:politician).permit(:full_name, :email, :password, :phone_number, :country, :address, :photo, :gender, :description, :political_camp, :expertise, :price)
  end
end
