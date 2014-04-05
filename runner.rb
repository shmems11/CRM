require "/.contact"


class Runner

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

end