class RepairsController < ApplicationController
  before_action :set_repair, only: [:show, :edit, :update, :destroy]

  # GET /repairs
  def index
    @repairs = Repair.all
    respond_to do |format|
      format.html 
      format.json { render json: @repairs, status: :unprocessable_entity }
    end
    
  end

  # GET /repairs/1
  def show
  end

  # GET /repairs/new
  def new
    @repair = Repair.new
  end

  # GET /repairs/1/edit
  def edit
  end

  # POST /repairs
  def create
    @repair = Repair.new(repair_params)
    # date = params[:repair]
    # repair_date = DateTime.new date["repair_date(1i)"].to_i, date["repair_date(2i)"].to_i, date["repair_date(3i)"].to_i, date["repair_date(4i)"].to_i, date["repair_date(5i)"].to_i
    # @repair.repair_date = repair_date

    if @repair.save
      redirect_to @repair, notice: 'Repair was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /repairs/1
  def update
    if @repair.update(repair_params)
      redirect_to @repair, notice: 'Repair was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /repairs/1
  def destroy
    @repair.destroy
    redirect_to repairs_url, notice: 'Repair was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair
      @repair = Repair.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def repair_params
      params.fetch(:repair,{})
      params.require(:repair).permit!
      # date = params[:repair]
      # repair_date = DateTime.new date["repair_date(1i)"].to_i, date["repair_date(2i)"].to_i, date["repair_date(3i)"].to_i, date["repair_date(4i)"].to_i, date["repair_date(5i)"].to_i
      # repair_params = params.merge(:repair_date => repair_date)
      # repair_params
    end
end
