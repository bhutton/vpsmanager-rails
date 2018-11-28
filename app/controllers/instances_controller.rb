class InstancesController < ApplicationController
  # GET /instances
  # GET /instances.json
  def index
    @instances = Instance.all
  end

  # GET /instances/new
  def new
    @instances = Instance.new
  end

  # GET /instances/1
  # GET /instances/1.json
  def show
  end

  # POST /instances
  # POST /instances.json
  def create
    @instance = Instance.new(instance_params)

    respond_to do |format|
      format.html { redirect_to @instance, notice: 'Instance Created.' }
    end
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def instance_params
    params.require(:instance).permit(:name)
  end

end