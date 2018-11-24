student_count = 11

students = [
  {name: "Dr. Hannibal Lecter", cohort: :november, country_of_birth: "England"},
  {name: "Darth Vader", cohort: :november, country_of_birth:  "France"},
  {name: "Nurse Ratched", cohort: :november, country_of_birth:  "Belgium"},
  {name: "Michael Corleone", cohort: :november, country_of_birth:  "Switzerland"},
  {name: "Alex DeLarge", cohort: :november, country_of_birth:  "Vietnam"},
  {name: "The Wicked Witch of the West", cohort: :november, country_of_birth:  "Ireland"},
  {name: "Terminator", cohort: :november, country_of_birth:  "Germany"},
  {name: "Freddy Krueger", cohort: :november, country_of_birth:  "Austria"},
  {name: "The Joker", cohort: :november, country_of_birth:  "Poland"},
  {name: "Joffrey Baratheon", cohort: :november, country_of_birth:  "Lithuania"},
  {name: "Norman Bates", cohort: :november, country_of_birth:  "Germany"}
]
def print_header
  puts ("The students of Villains Academy")
  puts ("_____________")
end

def print(students)
  students.each do |student|
	  puts "#{student[:name]} (#{student[:cohort]} cohort) #{student[:country_of_birth]}" 
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
		students << {name: name, cohort: :november, :country_of_birth}
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
  puts "9. Exit"
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
    exit
  else
    puts "I don't know what you meant, try again"
  end 
  # 4. repeat from step 1
end 
end 





students = input_students
print_header
print(students)
print_footer(students)

