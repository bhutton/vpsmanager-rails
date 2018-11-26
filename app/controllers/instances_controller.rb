class InstancesController < ApplicationController
  # GET /instances
  # GET /instances.json
  def index
    @instances = Instance.all
  end

  def new
    @instances = Instance.new
  end

  # GET /instances/1
  # GET /instances/1.json
  def show
  end

end