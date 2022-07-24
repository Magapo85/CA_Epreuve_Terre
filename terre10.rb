#!/usr/bin/env ruby

#affiche la racine carrée d'un entier positif en argument et gerer les potentielles erreurs d'arguments 

#pour gerer les decimal avec to_d ou Decimal() ou BigDecimal()
#require 'bigdecimal'
#require 'bigdecimal/util'

#fonction utile qui trouve le nombre d'argument comme .length()
def nombreArgument
        i = 0
        while ARGV[i]
                i += 1
        end
        return i
end

#fonction utile qui mesure la longueur d'une array ou string comme .length()
def longueurArgument(mot)
        i = 0
        while mot[i]
                i += 1
        end
        return i
end

#fonction pour trouver un caractere dans un array, comme .index()
def trouverDansArray(carac, array)
        sortie = "ok"
        index = longueurArgument(array)
        i = 0
        while i < longueurArgument(array) && sortie == "ok"
                if array[i] == carac
                        sortie = "erreur"
                        index = i
                end
                i = i + 1
        end
        return index, sortie
end

#fonction utile qui test si l'argument (nombre suppose entier) contient . ou , avant conversion et calcul
def fauxEntier(nombre) 
	if trouverDansArray(",", nombre)[1] == "erreur" || trouverDansArray(".", nombre)[1] == "erreur"
		return "erreur"
	else
		return "ok"
	end 	
end

if nombreArgument > 1 || nombreArgument == 0 || ARGV[0].to_i <= 0 || fauxEntier(ARGV[0]) == "erreur"  
        puts "erreur"
else
	puts (ARGV[0].to_i ** 0.5)#.to_i
end

