class PoliticiansController < ApplicationController
  def index
    if params[:query].present? && params[:queryloc].present?
      sql_query = " \
        politicians.expertise @@ :query \
        AND politicians.country @@ :queryloc \
      "
      @politicians = Politician.where(sql_query, query: "%#{params[:query]}%", queryloc: "%#{params[:queryloc]}%")

    elsif params[:query].present? || params[:queryloc].present?
      sql_query = " \
        politicians.expertise @@ :query \
        OR politicians.country @@ :queryloc \
      "
      @politicians = Politician.where(sql_query, query: "%#{params[:query]}%", queryloc: "%#{params[:queryloc]}%")

    else
      @politicians = Politician.all
    end

    @markers = @politicians.geocoded.map do |politician|
      {
        lat: politician.latitude,
        lng: politician.longitude,
        info_window: render_to_string(partial: "info_window", locals: { politician: politician}),
        image_url: helpers.asset_url("politicien.png")
      }
    end
  end

  def show
    @politician = Politician.find(params[:id])
    @booking = Booking.new
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
