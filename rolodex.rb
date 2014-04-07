class Rolodex
	attr_reader :contacts
	def initialize
		@contacts = []
		@id = 0
	end

	def contacts
		@contacts
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end

	def delete_contact(id)
		@contacts.delete_if {|contact| contact.id == id}
	end

	def edit_first_name(id, first_name)
		@contacts.each { |contact| 
			if contact.id == id
			contact.first_name = first_name
			end
		}
	end

	def edit_last_name(id, last_name)
		@contacts.each { |contact| 
			if contact.id == id
				contact.last_name = last_name
			end
		}
	end

	def edit_email(id, email)
		@contacts.each { |contact| 
			if contact.id == id
				contact.email = email
			end
		}
	end

	def edit_notes(id, notes)
		@contacts.each { |contact| 
			if contact.id == id
				contact.notes = notes
			end
		}
	end
end