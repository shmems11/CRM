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
		print "Enter contact id to modify"
		id = gets.chomp.to_i

		done = false
		while !done
			puts "What attribute would you like to modify?"
			puts "1. First Name"
			puts "2. Last Name"
			puts "3. Email"
			puts "4. Notes"
			puts "0. Back to Menu"
			attribute_selection = gets.chomp
			if attribute_selection == 0
				done = true
			elsif attribute_selection == 1
				puts "Enter Updated Info:"
				first_name = gets.chomp
				@rolodex.edit_first_name(id, first_name)
			elsif attribute_selection == 2
				puts "Enter Updated Info:"
				last_name = gets.chomp
				@rolodex.edit_last_name(id, last_name)
			elsif attribute_selection == 3
				puts "Enter Updated Info:"
				email = gets.chomp
				@rolodex.edit_email(id, email)
			elsif attribute_selection == 4
				puts "Enter Updated Info:"
				notes = gets.chomp
				@rolodex.edit_notes(id, notes)
			else 
				"Error. Please make a valid selection."
			end		
		end	
	end

	def delete_contact
		print "Enter ID of Contact to Delete:"
		id = gets.chomp.to_i
		@rolodex.delete_contact(id)
	end

	def display_all
		print contacts 
	end

	def display_one
	end			
end

run = Runner.new("Em")