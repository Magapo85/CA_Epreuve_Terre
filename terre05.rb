#!/usr/bin/env ruby

#determine si l'argument donne est un entier pair ou impair (nombre positif ou negatif) et exception d'argument text

#on prends l'argument d'entree et on convertie en nombre(positif negatif) ou 0 si texte ou 0
valeur=ARGV[0].to_i

if valeur == 0 
	puts "Tu ne me la mettras pas à l'envers"
elsif (valeur-1) % 2 == 0
	puts "impair"
else
	puts "pair"
end
