class Llogaria
	attr_writer :fjalekalimi
	attr_accessor :username, :roli, :person
	def initialize(username, fjalekalimi, roli, person)
		@username = username
		@fjalekalimi = fjalekalimi
		@roli = roli
		@person = person
		@status = true
	end

	def nderro_fjalekalimin
		puts "Shkruani fjalekalimin e ri:"
		new_password = gets.chomp
		puts "Rishkruani fjalekalimin: "
		new_password2 = gets.chomp
		if new_password2 == new_password
			@fjalekalimi = new_password
		end
	end

	def nderro_rolin(roli)
		@roli = roli
	end

	def mbyll_llogarine
		@status = false
	end

	def to_s
		"Username: #{@username}\nRoli: #{@roli}\nPerson: #{@person}\nStatus: #{@status}\n\n"
	end
end
