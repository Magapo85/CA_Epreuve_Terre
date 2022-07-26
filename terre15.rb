#!/usr/bin/env ruby

#determine si une liste d'entiers est triee ou pas

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

#fonction utile qui test si l'argument entier contient . ou , avant conversion et calcul
def fauxEntier()
	sortie = "ok"
	i = 0
	while ARGV[i] && sortie == "ok" 
        	if trouverDansArray(",", ARGV[i])[1] == "erreur" || trouverDansArray(".", ARGV[i])[1] == "erreur" || (ARGV[i].to_i == 0 && ARGV[i] != "0")
                	sortie = "erreur"
        	end
		i = i + 1
	end
	return sortie
end

#fonction pour determiner le nombre du milieu entre 3 entiers
def ordonnee()
	i = 1
	sortie = "Triée !"
	while ARGV[i] && sortie == "Triée !"
        	if ARGV[i-1].to_i > ARGV[i].to_i
                	sortie = "Pas triée !"
        	end
		i = i + 1
	end
	return sortie
end

if nombreArgument <= 1 || fauxEntier() == "erreur"
        puts "erreur."
else
        puts ordonnee()
end

