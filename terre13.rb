#!/usr/bin/env ruby

#transforme une heure au format 12h en une heure au format 24h, attention midi/minuit
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

#fonction utile qui test si l'argument est un nombre entier, ne contient pas . ou , et bien entre 0 et 12 ou 0 et 59 selon heure ou minute
def fauxEntier(nombre, type)
        if trouverDansArray(",", nombre)[1] == "erreur" || trouverDansArray(".", nombre)[1] == "erreur" || (nombre != "00" && nombre.to_i == 0)
                return "erreur"
        else
                if (type == "heure" && (nombre.to_i < 0 || nombre.to_i > 12)) || (type == "minute" && (nombre.to_i < 0 || nombre.to_i > 59))
                        return "erreur"
                else
                        return "ok"
                end
        end
end

if nombreArgument != 1 || longueurArgument(ARGV[0]) != 7 || ARGV[0][2] != ":" || fauxEntier(ARGV[0][0]+ARGV[0][1], "heure") == "erreur" || fauxEntier(ARGV[0][3]+ARGV[0][4], "minute") == "erreur"
        puts "erreur, saisir un format 12 h type : XX:XXAM ou XX:XXPM"
elsif ARGV[0][5] == "A"
        if ARGV[0][0] + ARGV[0][1] == "12"
                puts "00:" + ARGV[0][3] + ARGV[0][4]
        else
                puts ARGV[0][0] + ARGV[0][1] + ":" + ARGV[0][3] + ARGV[0][4]
        end
elsif ARGV[0][5] == "P"
        if ARGV[0][0] + ARGV[0][1] == "12"
                puts "12:" + ARGV[0][3] + ARGV[0][4]
        else
                puts ((ARGV[0][0] + ARGV[0][1]).to_i + 12).to_s + ":" + ARGV[0][3] + ARGV[0][4]
        end
else
        puts "erreur, saisir un format 12 h type : XX:XXAM ou XX:XXPM"
end
