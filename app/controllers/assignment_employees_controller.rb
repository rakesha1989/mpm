class AssignmentEmployeesController < ApplicationController
  before_action :set_assignment_employee, only: [:show, :edit, :update, :destroy]

  # GET /assignment_employees
  # GET /assignment_employees.json
  def index
    @assignment_employees = AssignmentEmployee.all
  end

  # GET /assignment_employees/1
  # GET /assignment_employees/1.json
  def show
  end

  # GET /assignment_employees/new
  def new
    @assignment_employee = AssignmentEmployee.new
  end

  # GET /assignment_employees/1/edit
  def edit
  end

  # POST /assignment_employees
  # POST /assignment_employees.json
  def create
    @assignment_employee = AssignmentEmployee.new(assignment_employee_params)

    respond_to do |format|
      if @assignment_employee.save
        format.html { redirect_to @assignment_employee, notice: 'Assignment employee was successfully created.' }
        format.json { render :show, status: :created, location: @assignment_employee }
      else
        format.html { render :new }
        format.json { render json: @assignment_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assignment_employees/1
  # PATCH/PUT /assignment_employees/1.json
  def update
    respond_to do |format|
      if @assignment_employee.update(assignment_employee_params)
        format.html { redirect_to @assignment_employee, notice: 'Assignment employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @assignment_employee }
      else
        format.html { render :edit }
        format.json { render json: @assignment_employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assignment_employees/1
  # DELETE /assignment_employees/1.json
  def destroy
    @assignment_employee.destroy
    respond_to do |format|
      format.html { redirect_to assignment_employees_url, notice: 'Assignment employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment_employee
      @assignment_employee = AssignmentEmployee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_employee_params
      params.require(:assignment_employee).permit(:assignmnet_id, :employee_id)
    end
end
