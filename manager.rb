



# 3. Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.

# Bonus: What happens when you define a method in the Employee and Manager class with the same name?

module Reportable
  def send_report
    puts "Sending report..."
    # code to send report
    puts "Email sent."
  end
end  

class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

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

  def fire_all_employees
    @employees.length.times do |index|
      @employees|index|.active = false
    end  
  end
end

class Intern < Employee
  include Reportable
end  



employee_1 = Employee.new(
                          first_name: "Nick", 
                          last_name: "Cage", 
                          salary: 70000, 
                          active: true
                          )

employee_2 = Employee.new(
                          first_name: "Julia", 
                          last_name: "Andrews", 
                          salary: 80000, 
                          active: true
                          )

manager = Manager.new(
                      first_name: "Grace",
                      last_name: "Hopper",
                      salary: 100000,
                      active: true,
                      employees: [employee_1, employee_2]
                      )

p manager.give_all_raises