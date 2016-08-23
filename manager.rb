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

class Manager < Employee
  def send_report
    puts "Sending Email..."
    # code to send the email
    puts "Email Sent"
  end
end

employee_1 = Employee.new({first_name: 'Martha', last_name: 'Stewart', salary: 80000, active: true})
employee_2 = Employee.new({first_name: 'James', 
                           last_name: 'Bond', 
                           salary: 60000, 
                           active: true})
employee_1.print_info
employee_2.print_info

manager = Manager.new({first_name: 'Manny', last_name: 'Manors', salary: 10000000, active: true})

manager.print_info
manager.send_report






