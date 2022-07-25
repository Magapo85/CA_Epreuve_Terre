#!/usr/bin/env ruby

#prend en parametre trois entiers et affiche la valeur du milieu

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
def fauxEntier(nombre)
        if trouverDansArray(",", nombre)[1] == "erreur" || trouverDansArray(".", nombre)[1] == "erreur" || (nombre.to_i == 0 && nombre != "0")
                return "erreur"
        else
                return "ok"
        end
end

#fonction pour determiner le nombre du milieu entre 3 entiers
def milieu(nombre1, nombre2, nombre3)
	if (nombre1 < nombre2 && nombre1 > nombre3) || (nombre1 > nombre2 && nombre1 < nombre3)
		return nombre1
	elsif (nombre2 < nombre1 && nombre2 > nombre3) || (nombre2 > nombre1 && nombre2 < nombre3)
		return nombre2
	else 
		return nombre3
	end
end

if nombreArgument != 3 || fauxEntier(ARGV[0]) == "erreur" || fauxEntier(ARGV[1]) == "erreur" || fauxEntier(ARGV[2]) == "erreur" || ARGV[0] == ARGV[1] || ARGV[0] == ARGV[2] || ARGV[2] == ARGV[1]
	puts "erreur"
else
	puts milieu(ARGV[0].to_i, ARGV[1].to_i, ARGV[2].to_i)
end

