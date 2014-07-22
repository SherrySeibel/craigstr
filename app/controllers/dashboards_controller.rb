class DashboardsController < ApplicationController
  def index
    regions = Region.all
  end
end