class SalariesController < ApplicationController
   
  
  def index
    @salary = Salary.last
    @hourly = @salary.salary / 52 / 40
  end

  def new
    @salary = Salary.new
  end
  
  def create
    @salary = Salary.new(salary_params)
    if @salary.save
     redirect_to salaries_path
   else
      flash[:danger] = "You must enter a numeric salary!"
      render action: 'new' 
    end
  end
  
  private
    
    def salary_params
      params.require(:salary).permit(:salary)
    end
    
end
