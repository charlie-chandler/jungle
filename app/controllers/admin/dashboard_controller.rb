class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with :name => ENV['HTTP_BASIC_AUTH_USERNAME'], :password => ENV['HTTP_BASIC_AUTH_PASSWORD']

  def show
    @total_quantity = Product.sum(:quantity)
    @total_categories = Category.count(:name)
  end
end
