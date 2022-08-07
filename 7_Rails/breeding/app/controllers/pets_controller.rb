class PetsController < ApplicationController
def
  def new
  end

  def show
    @pet = Pet.find(params[:id])
  end
end
