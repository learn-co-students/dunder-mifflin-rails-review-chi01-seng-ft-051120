class DogsController < ApplicationController
  before_action :find_dog, only: [:show]
  
  def index
    @sorted_dogs_by_employees = Dog.sort_by_employees
  end

  def show
    @owners = @dog.employees
  end

  private

  def find_dog
    @dog = Dog.find(params[:id])
  end
end
