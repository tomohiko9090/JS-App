class OwnersController < ApplicationController
  def index
    @owners = Owner.order(:id)
  end

  def new
    @owner = Owner.find(params[:id])
  end
end
