class Rafti
	attr_accessor :id, :numri_i_dhomes, :numri_i_rendeve
	def initialize(id, numri_dhomes, numri_rendeve)
		@id = id
		@numri_i_dhomes = numri_dhomes
		@numri_i_rendeve = numri_rendeve
		@lista_e_rendeve = Array.new
		@numri_aktual_i_rendeve = 0
	end

	def to_s
		"ID: #{@id}\nNumri i dhomes: #{@numri_i_dhomes}\nNumri i rendeve: #{@numri_i_rendeve}\nNumri aktual i rendeve: #{@numri_aktual_i_rendeve}\n:Lista e rendeve: #{@lista_e_rendeve}"
	end

	def shto
		@numri_aktual_i_rendeve = @numri_aktual_i_rendeve + 1
	end

	def shto_rendin(rendi)
		if (@lista_e_rendeve.length < @numri_i_rendeve)
			@lista_e_rendeve.append(rendi)
			shto()
		else
			puts "Nuk mund të shtohet një rend tjetër në raft pasi është i mbushur aktualisht. Provoni ta shtoni në ndonjë raft tjetër."
		end
	end
end