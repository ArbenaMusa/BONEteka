=begin 
	Të krijohet klasa Libri objekteve të së cilës sapo të inicializohen ju jepet titulli, autori,
	viti i botimit,  shtepia botuese, numri i faqeve. Të konsiderohet që viti i botimit dhe shtëpia
	botuese janë parametra jo të  domosdoshëm dhe në rastet kur nuk nuk jepen nga përdoruesi vlera e
	etyre të paracaktohet si nil. Titulli dhe  autori nuk duhet të kenë mundësi të ndryshohen por vetëm
	të lexohen, ndërsa viti i botimit, shtepia botuese  dhe numri i faqeve duhet të kenë mundësi të
	ndryshohen dhe të  të lexohet përmes attr_accessor. Poashtu të shkruhet metoda update e cila i
	ndryshon keto të dhëna njëherësh. 
=end

class Libri
	attr_accessor :viti_i_botimit, :shtepia_botuese, :numri_i_faqeve
	attr_reader :titulli, :autori

	def initialize(titulli_librit, autori_librit, vitibotimit="", shtepiabotuese="", numri_faqeve)
		@titulli = titulli_librit
		@autori = autori_librit
		@viti_i_botimit = vitibotimit
		@shtepia_botuese = shtepiabotuese
		@numri_i_faqeve = numri_faqeve
	end

	def to_s
		"Titulli i librit: #{@titulli}\nAutori: #{@autori}\nViti i botimit: #{@viti_i_botimit}\nShtepia botuese: #{@shtepia_botuese}\nNumri i faqeve: #{@numri_i_faqeve}"
	end

	def update(vitibotimit="", shtepiabotuese="", numri_faqeve)
		@viti_i_botimit = vitibotimit
		@shtepia_botuese = shtepiabotuese
		@numri_i_faqeve = numri_faqeve
	end
end
