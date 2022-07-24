#!/usr/bin/env ruby

#affiche le résultat d'une puissance, argument 1 nombre puis argument 2 l'exposant qui ne pourra pas etre négatif, gerer les potentielles erreurs d'arguments

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
def fauxFloat(nombre)
        if trouverDansArray(",", nombre)[1] == "erreur"
                return "erreur"
        else
                return "ok"
        end
end

if nombreArgument > 2 || nombreArgument == 0 || fauxFloat(ARGV[0]) == "erreur" || fauxFloat(ARGV[1]) == "erreur" || ARGV[0].to_f == 0 || ARGV[1].to_f <= 0
	puts "erreur"
else
	puts (ARGV[0].to_f ** ARGV[1].to_f)
end

