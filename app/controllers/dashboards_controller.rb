class DashboardsController < ApplicationController
  def index
    @regions = Region.order("name ASC")
  end
end