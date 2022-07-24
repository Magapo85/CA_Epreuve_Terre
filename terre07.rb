#!/usr/bin/env ruby

#affiche l'inverse de la chaine de caracteres donnee en argument en gerant les potentielles erreurs d'arguments

#fonction utile qui trouve le nombre d'argument comme .length()
def nombreArgument
        i = 0
        while ARGV[i]
                i += 1
        end
        return i
end

#fonction utile qui mesure la longueur d'un argument comme .length()
def longueurArgument(argument)
        i = 0
        while argument[i]
                i += 1
        end
        return i
end

if nombreArgument > 0 then #ARGV.length>0 then #test si un argument a été donne
	allArgument = ARGV[0]
	for i in 1 ... nombreArgument #ARGV.length
		allArgument = allArgument + " " + ARGV[i] #on met tout les arguments dans une seule variable
	end
	allArgumentInv = ""
	for i in 0 ... longueurArgument(allArgument) + 1 #allArgument.length+1
		allArgumentInv += allArgument[longueurArgument(allArgument) - i].to_s #on inverse chaque caractere 1 par 1 dans une nouvelle variable
	end
	puts allArgumentInv
end
