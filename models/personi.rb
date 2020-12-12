=begin  
	Të krijohet klasa Person e cila përfaqëson një person fizik. Sapo të krijohet kjo klasë
	të caktohen të dhënat personale për instancën e klasës përkatëse. Të dhënat e domosdoshme që duhet
	të ketë objekti janë emri, mbiemri, ditëlindja, vendlindja, numri personal të cilat janë read only
	dhe vendbanimi, numri i telefonit që duhet të kenë hapësirë për modifikime. Të mbishkruhet metoda
	to_s e cila duhet të jap të gjitha të dhënat e personit përkatës. 
=end
class Person
	attr_reader :emri, :mbiemri, :ditelindja, :numri_personal
	attr_accessor :vendbanimi, :numri_tel 

	def initialize(emri,mbiemri,ditelindja,nr_personal,vendbanimi,numri_tel)
		@emri=emri
		@mbiemri=mbiemri
		@ditelindja=ditelindja
		@nr_personal=nr_personal
		@vendbanimi=vendbanimi
		@numri_tel=numri_tel
		
	end
	def to_s
		"Te dhenat e personit jane: Emri:#{@emri},Mbiemri:#{@mbiemri}, Ditelindja: #{@ditelindja}, Numri personal: #{@nr_personal}, vendbanimi: #{@vendbanimi}, Numri telefonit: #{@numri_tel}"
	end
end