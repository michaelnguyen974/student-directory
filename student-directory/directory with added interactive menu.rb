student_count = 11

students = [
  {name: "Dr. Hannibal Lecter", cohort: :november,},
  {name: "Darth Vader", cohort: :november},
  {name: "Nurse Ratched", cohort: :november},
  {name: "Michael Corleone", cohort: :november},
  {name: "Alex DeLarge", cohort: :november},
  {name: "The Wicked Witch of the West", cohort: :november},
  {name: "Terminator", cohort: :november},
  {name: "Freddy Krueger", cohort: :november},
  {name: "The Joker", cohort: :november},
  {name: "Joffrey Baratheon", cohort: :november},
  {name: "Norman Bates", cohort: :november}
]
def print_header
  puts ("The students of Villains Academy")
  puts ("_____________")
end

def print(students)
  students.each do |student|
	  puts "#{student[:name]} (#{student[:cohort]} cohort)" 
  end
end
def print_footer(students)
  puts "Overall, we have #{students.count} great students"
end 

def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit enter twice"
	students = []	
	name = gets.chomp 

	while !name.empty? do 
		students << {name: name, cohort: :november}
		puts "Now we have #{students.count} students"
		name = gets.chomp
	end
	students
end 

def interactive_menu
  students = []
  loop do
    # 1. print the menu and ask the user what to do
    puts "1. Input the students"
    puts "2. Show the students"
    puts "9. Exit" # 9 because we'll be adding more items
    # 2. read the input and save it into a variable
    selection = gets.chomp
    # 3. do what the user has asked
    case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what you meant, try again"
    end
  end
end

students = input_students
print_header
print(students)
print_footer(students)
