#!/usr/bin/env ruby

#affiche le nombre de caracteres d'une chaine de caracteres passee en argument

def nombreArgument
	i=0
    	while ARGV[i]
		i+=1
	end
	return i
end

def longueurArgument(numeroArg)
	i=0
	while ARGV[numeroArg][i]
                i+=1
        end
        return i
end

for b in 0 ... nombreArgument
        puts ARGV[b]
        puts longueurArgument(b)
        b+=1
end
