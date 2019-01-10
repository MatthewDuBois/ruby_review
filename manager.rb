require "./employee.rb"
require "./reportable.rb"

class Manager < Employee
  include Reportable

  def initialize(input_options)
    super(input_options)
    @employees = input_options[:employees]
  end

# 2. Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.

# create the loop
  def give_all_raises
    # define the employees

    # iterate thru each employee
    @employees.each do |employee|
      employee.give_annual_raise
    # called give_annual_raise on each employee
    end  
  end

  # def fire_all_employees
  #   @employees.each do |employee|
  #     @active = false
  # end  

  # def fire_all_employees
  #   @employees.length.times do |index|
  #     @employees|index|.active = false
  #   end  
  # end
end




