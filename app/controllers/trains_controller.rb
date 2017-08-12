class TrainsController < ApplicationController
  before_action :set_train, only: [:show, :edit, :update, :destroy]
  def index
    @trains = Train.all
  end
end
