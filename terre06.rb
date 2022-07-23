#!/usr/bin/env ruby

#affiche le resultat et le reste d'une division euclidienne entre deux nombres

#fonction utile pour division de nombre négatif comme .abs()
def absolue(nombre)
	resultat = ((nombre.to_r * nombre.to_r) ** 0.5).to_i
	return resultat
end

if ARGV[0].to_i == 0 || ARGV[1].to_i == 0 || absolue(ARGV[0].to_i) < absolue(ARGV[1].to_i)
	puts "erreur."
else
	puts "résultat: #{ARGV[0].to_i/ARGV[1].to_i}"
	puts "reste: #{ARGV[0].to_i%ARGV[1].to_i}"
end
