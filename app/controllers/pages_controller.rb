class PagesController < ApplicationController
  def home
    @politicians = Politician.all.limit(4)
  end
end
