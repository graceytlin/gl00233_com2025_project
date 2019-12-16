class ShiftsController < ApplicationController
  before_action :set_shift, only: [:show, :edit, :update, :destroy]
  before_action :set_timesheet, only: [:new, :create]

  def index
    @shifts = Shift.all
    @shiftsindex = Shift.all.new(shift_index_params)
    @timesheet = Timesheet.find_by(id: params[:timesheet_id]) || Timesheet.find(shift_params[:timesheet_id])
  end

  # GET /shifts/new
  def new
    @shift = @timesheet.shifts.new
  end

  # POST /shifts
  # POST /shifts.json
  def create
    @shift = @timesheet.shifts.new(shift_params)

    respond_to do |format|
      if @shift.save
        format.html { redirect_to @shift, notice: t('.success_new') }
        format.json { render :show, status: :created, location: @shift }
      else
        format.html { render :new }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shifts/1
  # PATCH/PUT /shifts/1.json
  def update
    respond_to do |format|
      if @shift.update(shift_params)
        format.html { redirect_to @shift, notice: t('.success_update') }
        format.json { render :show, status: :ok, location: @shift }
      else
        format.html { render :edit }
        format.json { render json: @shift.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shifts/1
  # DELETE /shifts/1.json
  def destroy
    @shift.destroy
    respond_to do |format|
      format.html { redirect_to timesheets_url, notice: 'Shift was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_timesheet
      @timesheet = Timesheet.find_by(id: params[:timesheet_id]) || Timesheet.find(shift_params[:timesheet_id])
    end

    def set_shift
      @shift = Shift.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shift_params
      params.require(:shift).permit(:timesheet_id, :date, :start_time, :end_time, :paid, :clock_in, :clock_out)
    end

end
