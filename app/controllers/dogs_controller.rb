class DogsController < ApplicationController
    def index 
        @dogs = Dog.all 
    end 

    def order
        @dogs = Dog.all.sort_by do |dog|
            dog.employees.count 
        end.reverse 
        
        render :index
    end 

    def show 
        @dog = Dog.find(params[:id])
        @employees = @dog.employees 
    end 

end
