class PoliticiansController < ApplicationController
  def index
    @politicians = Politician.all
  end

  private

  def politician_params
    params.require(:politician).permit(:full_name, :email, :password, :phone_number, :country, :address, :photo, :gender, :description, :political_camp, :expertise, :price)
  end
end
