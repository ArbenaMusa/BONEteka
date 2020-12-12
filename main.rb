require_relative "models/biblioteka"
require_relative "models/dhoma"
require_relative "models/libri"
require_relative "models/llogaria"
require_relative "models/personi"
require_relative "models/rafti"
require_relative "models/rendi"
require_relative "data/perdoruesit"


STDOUT.sync = true

=begin  
	Në programin main.rb të shkruhet funksioni kyçu për kyçje në sistemin e bibliotekës.
	Brenda këtij funksioni kërkohen username dhe fjalëkalimi. Nëse username nuk i  takon ndonjërës nga
	llogaritë kthehet false, në të kundërtën kontrollohet se a përputhet fjalëkalimin. Nëse përputhet
	edhe fjalëkalimi kthehet true, në të kundërtën kthehet false. State i logimit të ruhet në variabla
	globale.  
=end
def logohu
	puts "Jepni username:"
	username = gets.chomp
	puts "Jepni fjalëkalimin:"
	fjalekalimi = gets.chomp

	$index = $perdoruesit.kerko(username)

	if $index != false && $perdoruesit.kontrollo_passin($index, fjalekalimi)
		puts "U krye llogimi me sukses!"
		$logged = true
	else 
		puts "Kredencialet tuaja jane gabim!"
		$logged = false
	end
end

=begin	
	Në programin main.rb të krijohet funksioni çkyqu i cili reseton variablat globale të kyçjes
	duke i lënë të zbrazëta dhe si pasojë ndalon çasjen e programit në vazhdim. 
=end 
def clogohu 
	puts "Jeni çloguar!"
	$logged = false 
end

=begin  
	Në programin main.rb të shkruhet funksioni kontrollo_rolin të cilit i jepet si argument
	një objekt i llogarisë dhe një rol. Nëse roli që ka objekti i llogarisë është i njejtë me rolin e
	dhënë kthehet true, në të kundërtën kthehet false. 
=end
def kontrollo_rolin roli_adekuat
	roli_aktual = $perdoruesit.gjej_rolin($index)
	if roli_aktual == roli_adekuat
		return true
	else 
		return false
	end
end


# ========== main =========


while true
	logohu
	while $logged
		puts "Roli i fiones eshte bibliotekiste"
		puts kontrollo_rolin(1)

		puts $test 
		
		clogohu
	end
end