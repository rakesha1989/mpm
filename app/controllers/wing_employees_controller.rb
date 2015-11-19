class WingEmployeesController < ApplicationController
  before_action :set_wing_employee, only: [:show, :edit, :update, :destroy]

  # GET /wing_employees
  # GET /wing_employees.json
  def index
    @wing_employees = WingEmployee.all
  end

  # GET /wing_employees/1
  # GET /wing_employees/1.json
  def show
  end

  # GET /wing_employees/new
  def new
    @wing_employee = WingEmployee.new
  end

  # GET /wing_employees/1/edit
  def edit
  end

  # POST /wing_employees
  # POST /wing_employees.json
  def create
    @wing_employee = WingEmployee.new(wing_employee_params)

    respond_to do |format|
      if @wing_employee.save
        format.html { redirect_to @wing_employee, notice: 'Wing employee was successfully created.' }
        format.json { render :show, status: :created, location: @wing_employee }
      else
        format.html { render :new }
        format.json { render json: @wing_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wing_employees/1
  # PATCH/PUT /wing_employees/1.json
  def update
    respond_to do |format|
      if @wing_employee.update(wing_employee_params)
        format.html { redirect_to @wing_employee, notice: 'Wing employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @wing_employee }
      else
        format.html { render :edit }
        format.json { render json: @wing_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wing_employees/1
  # DELETE /wing_employees/1.json
  def destroy
    @wing_employee.destroy
    respond_to do |format|
      format.html { redirect_to wing_employees_url, notice: 'Wing employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wing_employee
      @wing_employee = WingEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wing_employee_params
      params.require(:wing_employee).permit(:wing_id, :employee_id)
    end
end
