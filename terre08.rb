#!/usr/bin/env ruby

#affiche le nombre de caracteres d'une chaine de caracteres passee en argument

#fonction utile qui trouve le nombre d'argument comme .length()
def nombreArgument
	i = 0
    	while ARGV[i]
		i += 1
	end
	return i
end

#fonction utile qui mesure la longueur d'un argument comme .length()
def longueurArgument(numeroArg)
	i = 0
	while ARGV[numeroArg][i]
                i += 1
        end
        return i
end

if nombreArgument == 0 || nombreArgument > 1 || ARGV[0]=="0" || ARGV[0].to_i != 0
	puts "erreur."
else
        puts longueurArgument(0)
end
