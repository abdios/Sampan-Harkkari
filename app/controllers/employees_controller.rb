class EmployeesController < ApplicationController
def index
  	@employees = Employee.all
  end

  def show
  	@employee = Employee.find(params[:id])
  end

  def new
  	@employee = Employee.new
  end

  def create
  	@employee = Employee.create(params[:employee])
	  @employee.save
	  redirect_to employees_path
  end

  def edit
  	@employee = Employee.find(params[:id])
  end

  def update
  	@employee = Employee.find(params[:id])
  	@employee.update_attributes(params[:employee])
  	redirect_to employees_path
  end

  def destroy
	  @employee = Employee.find(params[:id])
	  @employee.destroy
	  redirect_to employees_path 	
  end
end
