=begin   
	Të krijohet klasa Rafti që do të përfaqësoj një raft me libra i cili përmban një numër
	të caktuar të rendeve. Sapo të krijohen objektet e kësaj klase të caktohet id e vetë raftit, numri i
	dhomës dhe numri i rendeve që mund të ketë rafti përkatës.Të caktohet një variabël e objektit e cila
	do të ruaj numrin rendeve aktuale të cilat gjenden në raft. Të caktohet një array e objektit e cila
	do të ruaj rendet e raftit përkatës. Të definohet metoda shto e cila rrit numrin e rendeve të cilat
	ndodhen aktualisht në raft. Të shkruhet metoda shto rendin e cila pranon si parametër një objekt të
	rendit dhe e shton në array. Kjo metodë duhet të kontrolloje se a ka vend të mjaftueshëm për shtimin
	e rendit. Në rastet kur array veçse ka arritur numrin e rendeve që ka rafti maksimalisht të kthehet
	mesazhi “Nuk mund të shtohet një rend tjetër në raft pasi është i mbushur aktualisht. Provoni ta
	shtoni në ndonjë raft tjetër.”. Në rastet kur ka mjaftueshëm vend për të shtuar rendin vetëm shfaqet
	në ekran “Rendi u shtua me sukses në raft!” dhe thirret metoda shto për të inkrementuar numrin e
	rendeve aktuale në raftin përkatës. Të mbishkruhet metoda to_s e cila jep detajet e rendit përkatës.
=end

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