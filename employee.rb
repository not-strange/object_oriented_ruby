# employee_1 = ["Martha", "Stewart", 80000, true]
# employee_2 = ["James", "Bond", 60000, true]

# puts employee_1[0] + " " + employee_1[1] + " makes $" + employee_1[2].to_s + " a year."
# puts "#{employee_2[0]} #{employee_2[1]} makes $#{employee_2[2]} a year."

#---------------------------------

# employee_1 = {:first_name => 'Martha', last_name: 'Stewart', salary: 80000, active: true}
# employee_2 = {first_name: 'James', 
#               last_name: 'Bond', 
#               salary: 60000, 
#               active: true}

# puts "#{employee_1[:first_name]} #{employee_1[:last_name]} makes $#{employee_1[:salary]} a year."
# puts "#{employee_2[:first_name]} #{employee_2[:last_name]} makes $#{employee_2[:salary]} a year."

#------------------------------------

class Employee
  attr_accessor :first_name, :last_name, :salary, :active

  def initialize(input_options_hash)
    @first_name = input_options_hash[:first_name]
    @last_name = input_options_hash[:last_name]
    @salary = input_options_hash[:salary]
    @active = input_options_hash[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes $#{@salary} a year."
  end

  def give_annual_raise
    @salary *= 1.05
  end
end

employee_1 = Employee.new({first_name: 'Martha', last_name: 'Stewart', salary: 80000, active: true})
employee_2 = Employee.new({first_name: 'James', 
                           last_name: 'Bond', 
                           salary: 60000, 
                           active: true})
employee_1.print_info
employee_2.print_info
employee_1.first_name = "Maggie"
employee_1.print_info









