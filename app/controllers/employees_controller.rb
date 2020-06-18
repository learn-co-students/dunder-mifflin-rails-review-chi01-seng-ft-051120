class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def show
    @employee = Employee.find(params[:id])
  end

  def new
    @employee = Employee.new
    @dogs = Dog.all
  end

  def create
    @dogs = Dog.all
    @employee = Employee.new(employee_params)
    if @employee.save
      redirect_to employee_path(@employee.id)
    else
      render :new
    end
  end

  def edit
    @employee = Employee.find(params[:id])
    @dogs = Dog.all
  end

  def update
    @employee = Employee.find(params[:id])
    @employee.update(employee_params)
    redirect_to employee_path(@employee)
  end

  private

  def employee_params
    params.require(:employee).permit(:first_name, :last_name, :alias, :title,
    :office, :img_url, :dog_id)
  end

end

# t.string "first_name"
# t.string "last_name"
# t.string "alias"
# t.string "title"
# t.string "office"
# t.string "img_url"
# t.integer "dog_id"
