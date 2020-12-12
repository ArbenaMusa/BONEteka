=begin
Të krijohet klasa Rendi që do të përfaqësoj nje rend me libra. Si variabël e instancës të caktohet numri i librave i cili rritet sa herë shtohet një libër i ri në rend. Kur krijohet një rend t’i përcaktohet id e vetë rendit, id e raftit dhe numri i dhomës në të cilën gjendet dhe të lejohet që këto dy të dhëna të mund të ndryshohet në rastet kur ndërrohet lokacioni i rendit. Klasa të përmbajë një array që i takon objektit dhe ruan reprezentimet e objekteve të librave. Të definohet metoda shto 
numrin që inkrementon numrin e librave. Të definohet metoda shto librin e cila pranon një objekt të librit si parametër dhe e shton në listën e libra dhe thirr metodën shto numrin.
=end

class Rendi
	attr_accessor :id_rendit, :id_raftit, :numri_i_dhomes
	def initialize(idRendit, idRaftit, numri_dhomes)
		@numri_i_librave = 0
		@lista_e_objekteve = Array.new
		@id_rendit = idRendit
		@id_raftit = idRaftit
		@numri_i_dhomes = numri_dhomes
	end

	def to_s
		"ID e rendit: #{@id_rendit}\nID e raftit: #{@id_raftit}\nNumri i dhomes: #{@numri_i_dhomes}\nNumri i librave: #{@numri_i_librave}\nLista: #{@lista_e_objekteve}"
	end

	def shto
		@numri_i_librave = @numri_i_librave + 1		
	end

	def shto_librin(libri)
		@lista_e_objekteve.append(libri)
		shto()
	end
end
