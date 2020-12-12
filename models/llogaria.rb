=begin  
	Të krijohet klasa Llogaria e cila përfaqëson llogaritë virtuale të personave të cilët do
	të përdorin sistemin elektronik të bibliotekës. Kur krijohet një user duhet të jepet username,
	fjalëkalimi, roli dhe një objekt person që i takon personit i cili do të posedoj llogarinë virtuale.
	Të krijohet poashtu edhe variabla e instancës status e cila tregon se a është aktive apo jo
	llogaria. Të definohet metoda ndërro_fjalëkalimin e cila e kërkon një fjalëkalim të ri dhe pasi ta
	konfirmoj a është i shkruar mirë për herë të dytë, e ndërron fjalëkalimin e vjetër me të riun. Të
	definohet metoda ndërr_rolin së cilës i jepet si argument titulli i rolit që do të ketë në vazhdim
	përdoruesi dhe ndërrohet ai aktual. Të definohet metoda mbyll_llogarinë e cila e ndryshon statusin e
	llogarisë nga aktive në pasive. Të mbishkruhet metoda to_s e cila duhet të japë username dhe
	objektin person. 
=end

class Llogaria
	attr_accessor :username, :fjalekalimi, :roli, :person
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
