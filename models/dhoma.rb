=begin  
	Të krijohet klasa Dhoma e cila përfaqëson një dhomë të veçantë brenda bibliotekës. Sapo të
	krijohet një objekt i kësaj klase t’i jepet një id e vetë dhomës dhe numrin maksimal i rafteve që
	mund të vendosen brenda dhomës. Të caktohet një variabël e objektit e cila ruan numrin e rafteve që
	gjenden aktualisht brenda dhomës. Të caktohet një array e objektit e cila do të përmbajë objektet e
	rafteve të cilët gjenden në dhomën përkatëse. Të definohet metoda shto e cila do të inkrementoj
	numrin aktual të rafteve në dhomë. Të krijohet metoda shto raftin e cila do të pranoj si parametër
	një raft dhe kontrollon se a ka vend ne dhomë për ta shkuar. Nëse numri aktual i rafteve në dhomë
	është ende më i vogël se numri maksimal i rafteve që mund të zë dhoma atëherë shfaqet në ekran
	“Rafti është vendosur me sukses në dhomë!”, shtohet rafti në array-in e rafteve dhe thirret metoda
	shto për të rritur numrin e rafteve aktuale në dhomë. Në të kundërtën shfaqet në ekran mesazhi “Nuk
	ka hapësirë të mjaftueshme për të vendosur raftin në dhomë. Provoni ta shtoni në ndonjë dhomë tjetër
	e cila ka vend të zbrazët.”. Të mbishkuhet metoda to_s e cila jep karakteristikat e dhomës
	përkatëse. 
=end

class Dhoma
	
	def initialize(id,nr_max)
		@id=id
		@nr_max=nr_max
		@array=[]
		@nr_rafteve=0
	end
	def to_s
		"Dhoma ka kete id(#{@id}) dhe kete numer maksimal(#{@nr_max}) te rafteve"

	end
		
	def shto
		@nr_rafteve=@nr_rafteve+1

	end
	def shto_raftin(raft)
		if @nr_rafteve <= @nr_max
			@array.append(raft)
			shto()
			puts"Rafti është vendosur me sukses në dhomë!"
		else
			puts "Nuk ka hapësirë të mjaftueshme për të vendosur raftin në dhomë. Provoni ta shtoni në ndonjë dhomë tjetër e cila ka vend të zbrazët."

		end

	end


end