class DashboardsController < ApplicationController
  def index
    @regions = Region.all.order('name ASC')
  end
end