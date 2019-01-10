

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



# employee_1 = ["Nick", "Cage", 70000, true]
# employee_2 = ["Julia", "Andrews", 80000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes " + employee_1[2].to_s + " a year."
# puts "#{employee_2[0]} #{employee_2[1]} makes #{employee_2[2]} a year."

# employee_1 = {first_name: => "Nick", last_name: => "Cage", salary: => 70000, active => true}
# employee_2 = {first_name: => "Julia", last_name: => "Andrews", salary: => 80000, active =>true} 

# puts "#{employee_2["first_name"]} #{employee_2["last_name"]} makes #{employee_2["salary"]} a year."

# # you can create key-value pairs starting with a symbol:  
# employee_3 = {:first_name => "Johnny", :last_name => "Test", :salary => 90000, :active => true} 

# # you can write it with javascript syntax and get rid of the hash rocket
# employee_4 = {first_name: "Frank", last_name: "Black", salary: 40000 }

# class Employee
#   attr_reader :first_name, :last_name, :active
#   attr_writer :active

#   # def initialize(input_first_name, input_last_name, input_salary, input_active)
#   #   @first_name = input_first_name
#   #   @last_name = input_last_name
#   #   @salary = input_salary
#   #   @active = input_active
#   # end  

#   def initialize (input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_option salary
#     @active = input_active
#   end  

#   def print_info
#     puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year." 
#   end  

#   def give_annual_raise
#     @salary *= 1.05
#   end  

#   # what if I want to access those attributes outside of the class....reader methods
#   # def first_name
#   #   return @first_name
#   # end
  
#   # def last_name
#   #   @last_name
#   # end
  
#   # def active
#   #   @active
#   # end

#   # def salary
#   #   @salary
#   # end  
#   #the attr_reader at the beginning made these redundant

#   # writer method...this redefines @active and now it requires an arguement 
#   # def active=(new_active_status)
#   #   @active = new_active_status
#   # end
#   #this is also now redundant  
        
# end

# employee_1 = Employee.new("Nick", "Cage", 70000, true)
# employee_1.print_info
# employee_1.give_annual_raise
# employee_1.print_info
# p employee_1.last_name.upcase
# # employee_1.active=(false)  #this is traditional syntax, below is alternate cleaner version 
# employee_1.active = false
# p employee_1.active



# class Employee
#   attr_reader :first_name, :last_name, :active
#   attr_writer :active

#   def initialize (input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_option[:salary]
#     @active = input_options[:active]
#   end  

#   def print_info
#     puts "#{ @first_name } #{ @last_name } makes #{ @salary } a year." 
#   end  

#   def give_annual_raise
#     @salary *= 1.05
#   end   
# end



# # Inheritance !!!! 

# class Manager < Employee
#   def initialize(input_options) 
#     super(input_options)
#     @employees = input_options[:employees]  
#   end  

#   def send_report
#     puts "sending report...."
#     # some code here
#     puts "Email sent."
#   end  
# end

# manager = Manager.new(
#                       first_name: "Grace",
#                       last_name: "Hopper",
#                       salary: 100000,
#                       active: true,
#                       employees: [employee_1, employee_2]
#                       )



# 1. Create a new file called manager.rb. Paste in the code, I’m giving you below

# 2. Create a method in the Manager class called give_all_raises that loops through each of the manager’s employees and gives them a raise (using the give_annual_raise method). Demonstrate how it works.

# 3. Create a method in the Manager class called fire_all_employees that loops through each of the manager’s employees and changes their active status to false.

# Bonus: What happens when you define a method in the Employee and Manager class with the same name?