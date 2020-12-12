=begin  
	Të krijohet klasa Biblioteka e cila do të përfaqësoj një bibliotekë. Në momentin që krijohet
	një instancë e kësaj klase duhet t’i jepet emri i bibliotekës, adresa, id stafit dhe numri maksimal
	i dhomave që mund të shfrytëzohen brenda kësaj biblioteke. Duhet të deklarohet variabla e klasës e
	cila ruan numrin e dhomave aktuale që janë funksionale në këtë bibliotekë dhe të definohet një array
	e cila do t’i ruaj objektet e dhomave. Të definohet metoda shto e cila inkrementon numrin e dhomave
	aktuale që shfrytëzohen brenda bibliotekës. Të krijohet metoda shto dhomën e disa merr si parametër
	një objekt të dhomës kontrollon se a ka ende dhoma të lira në bibliotekë të cilat mund të
	shfrytëzohen. Nëse numri i dhoma që shfrytëzohen aktualisht është më i vogël se numri i dhomave që
	mund të shfrytëzohen brenda bibliotekës, atëherë shfaqet në ekran “Dhoma mund të përdoret!”, shtohet
	dhoma në array-in e dhomave të objektit përkatës dhe thirret metoda shto. Në të kundërtën shfaqet në
	ekran “Biblioteka nuk ka dhoma të lira të cilat mund t’i shfrytëzoni momentalisht.”. Të mbishkruhet
	metoda to_s e cila jep karakteristikat e bibliotekës përkatëse. 
=end

class Bibloteka
	
	def initialize(emri,adresa,id,nr_max)
		@id=id
		@nr_max=nr_max
		@emri=emri
		@adresa=adresa
		@array=[]
		@nr_dhomave=0
	end
	def to_s
		"Dhoma ka kete emer:#{@emri}, kete adrese: #{@adresa},kete id te stafit:#{@id} dhe #{@nr_max} dhoma"

	end
		
	def shto
		@nr_dhomave=@nr_dhomave+1

	end
	def shto_dhomen(dhome)
		if @nr_dhomave <= @nr_max
			@array.append(dhome)
			shto()
			puts"Dhoma munde te perdoret!"
		else
			puts "Nuk ka hapësirë të mjaftueshme për të vendosur dhomen në biblotek"

		end

	end


end