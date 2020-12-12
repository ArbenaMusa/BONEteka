=begin   
	Të krijohet klasa Përdoruesit e cila do të përmbaj një array të llogarive virtuale. Të
	definohet metoda shto_llogarinë e cila merr si argument një objekt të llogarisë dhe e shton në
	array. Të shkruhet metoda kërko username e cila merr si argument një username dhe kontrollon se a
	gjindet një llogari me username të tillë në listën e llogarive. Nëse po e kthen indeksion e objektit
	i cili e ka username-in përkatës, ndërsa nëse nuk gjindet atëherë nuk kthen asgjë.  
=end

require_relative "../models/llogaria"
require_relative "../models/personi"

class Perdoruesit
	def initialize
		@lista_e_llogarive = Array.new
		@numri_i_perdoruesve = 0
	end

	def to_s
		"Numri i llogarive eshte: #{@numri_i_perdoruesve} - #{@lista_e_llogarive}"
	end

	def shto
		@numri_i_perdoruesve = @numri_i_perdoruesve + 1
	end

	def shto_llogarine(llogaria)
		@lista_e_llogarive.append(llogaria)
		shto()
	end

	def kerko username
		for index in 0...@lista_e_llogarive.length
			if @lista_e_llogarive[index].username == username
				return index
			end
		end
		return false
	end

	def gjej_rolin index
		return @lista_e_llogarive[index].roli

	end

	def kontrollo_passin index, fjalekalimin
		if fjalekalimin == @lista_e_llogarive[index].fjalekalimi
			return true
		else
			return false
		end
	end
end

$perdoruesit = Perdoruesit.new

personi1 = Person.new("Arbena", "Musa", "17 nentor", "12444444", "Prishtine", "044123456")
personi2 = Person.new("Fiona", "Bakija", "17 nentor", "12444444", "Prishtine", "044123456")

llogaria1 = Llogaria.new("arbena", "ruby", 1, personi1)
llogaria2 = Llogaria.new("fiona", "ruby", 1, personi2)

$perdoruesit.shto_llogarine(llogaria1)
$perdoruesit.shto_llogarine(llogaria2)
