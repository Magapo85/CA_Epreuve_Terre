#!/usr/bin/env ruby

#determine si l'argument donne est un entier pair ou impair (nombre positif ou negatif) et exception d'argument text

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

#on prends l'argument d'entree et on convertie en nombre entier (positif negatif) ou 0 si texte ou 0
valeur = ARGV[0].to_i

if valeur == 0 || fauxEntier(ARGV[0]) == "erreur"
	puts "Tu ne me la mettras pas à l'envers"
elsif (valeur - 1) % 2 == 0
	puts "impair"
else
	puts "pair"
end
