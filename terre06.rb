#!/usr/bin/env ruby

#affiche le resultat et le reste d'une division entre deux nombres

if ARGV[0].to_i==0 || ARGV[1].to_i==0 || ARGV[0].to_i<ARGV[1].to_i
	puts "erreur."
else
	puts "résultat: #{ARGV[0].to_i/ARGV[1].to_i}"
	puts "reste: #{ARGV[0].to_i%ARGV[1].to_i}"
end
