class InstancesController < ApplicationController
  # GET /instances
  def index
    @instances = Instance.all
  end

  # GET /instances/new
  def new
    @instances = Instance.new
  end

  # GET /instances/1
  def show
  end

  # POST /instances
  def create
    @instance = Instance.new

    respond_to do |format|
      format.html { redirect_to @instance, notice: 'Instance Created.' }
    end
  end

end