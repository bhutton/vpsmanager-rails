class InstancesController < ApplicationController
  before_action :set_instance, only: [:show, :edit, :update, :destroy]

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

  # GET /instances/1/edit
  def edit
  end

  # POST /instances
  def create
    @instance = Instance.new(micropost_params)

    respond_to do |format|
      @instance.save
      format.html {redirect_to @instance, notice: 'Instance Created.'}
    end
  end

  def update
    respond_to do |format|
      @instance.update(micropost_params)
      format.html {redirect_to @instance, notice: 'Instance Updated'}
    end
  end

  # DELETE /instances/1
  # DELETE /instances/1.json
  def destroy
    @instance.destroy
  end

  private

    def set_instance
      @instance = Instance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micropost_params
      params.require(:instance).permit(:id, :name, :description)
    end

end