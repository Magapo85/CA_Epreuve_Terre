#!/usr/bin/env ruby

#transforme une heure au format 24h en une heure au format 12h, attention midi/minuit
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
puts "ok"
if (ARGV[0][0] + ARGV[0][1]).to_i < 12 #ARGV[0][5] == "A"
puts "ok"
	if ARGV[0][0] == "0" && ARGV[0][1] == "0"
		puts "12:" + ARGV[0][3] + ARGV[0][4] + " AM"
	else
		puts ARGV[0][0] + ARGV[0][1] + ":" + ARGV[0][3] + ARGV[0][4] + " AM"
	end
elsif (ARGV[0][0] + ARGV[0][1]).to_i >= 12 #ARGV[0][5] == "P"
        if ARGV[0][0] == "1" && ARGV[0][1] == "2"
                puts "12:" + ARGV[0][3] + ARGV[0][4] + " PM"
        else
                puts ((ARGV[0][0] + ARGV[0][1]).to_i - 12).to_s + ":" + ARGV[0][3] + ARGV[0][4] + " PM"
        end
else 
	puts "erreur"
end
