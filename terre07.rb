#!/usr/bin/env ruby

#affiche l'inverse de la chaine de caracteres donnee en argument en gerant les potentielles erreurs d'arguments
if ARGV.length>0 then #test si un argument a été donne
	allArgument=ARGV[0]
	for i in 1 ... ARGV.length
		allArgument=allArgument+" "+ARGV[i]#on met tout les arguments dans une seule variable
	end
	allArgumentInv=""
	for i in 0 ... allArgument.length+1
		allArgumentInv+=allArgument[allArgument.length-i].to_s#on inverse chaque caractere 1 par 1 dans une nouvelle variable
	end
	puts allArgumentInv
end
