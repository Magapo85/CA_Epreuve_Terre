#!/usr/bin/env ruby

#affiche le resultat et le reste d'une division euclidienne entre deux nombres

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

#fonction utile pour division de nombre négatif comme .abs()
def absolue(nombre)
	resultat = ((nombre.to_r * nombre.to_r) ** 0.5).to_i
	return resultat
end

if ARGV[0].to_i == 0 || ARGV[1].to_i == 0 || absolue(ARGV[0].to_i) < absolue(ARGV[1].to_i) || fauxEntier(ARGV[0]) == "erreur" || fauxEntier(ARGV[1]) == "erreur"
	puts "erreur."
else
	puts "résultat: #{ARGV[0].to_i/ARGV[1].to_i}"
	puts "reste: #{ARGV[0].to_i%ARGV[1].to_i}"
end
