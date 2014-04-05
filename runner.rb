require_relative ('contact')
require_relative ('rolodex')


class Runner
	def initialize(name)
		@name = name
		@rolodex = Rolodex.new
	end
	
	def main_menu
		puts "1. Add a Contact"
		puts "2. Modify a Contact"
		puts "3. Delete a Contact"
		puts "4. Display all Contacts"
		puts "5. Display one Contact"
		puts "0. Exit"
		puts "Please, Enter a Number: "
	end

	def selection
		main_menu
		user_selection = gets.to_i
		activate_selection(user_selection)
	end

	def activate_selection(user_selection)
		if user_selection == 1
			add_contact
		elsif user_selection == 2
			modify_contact
		elsif user_selection == 3 
			delete_contact
		elsif user_selection == 4
			display_all
		elsif user_selection == 5
			display_one
		elsif user_selection == 0
			exit
		else
			"Error"
		end
	end	

	def add_contact
		print "Enter First Name:"
		first_name = gets.chomp
		print "Enter Last Name:"
		last_name = gets.chomp
		print "Enter Email Address:"
		email = gets.chomp
		print "Enter Notes:"
		notes = gets.chomp
		contact = Contact.new(first_name, last_name, email, notes)
		@rolodex.add_contact(contact)
	end

	def modify_contact
	end

	def delete_contact
	end

	def display_all
	end

	def display_one
	end			

end