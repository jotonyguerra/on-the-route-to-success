class AirplanesController < ApplicationController
  # before_action :set_airplanes, only: [:show, :edit, :update, :destroy]
  def index
    @airplanes = Airplane.all
  end
end
