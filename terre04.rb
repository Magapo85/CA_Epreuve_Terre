#!/usr/bin/env ruby

#affiche l'alphabet a partir de la lettre donnee en argument en lettres minuscules en une boucle suivi d'un retour a la ligne

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
	sortie = "erreur"
	index = longueurArgument(array)
	i = 0
	while i < longueurArgument(array) && sortie == "erreur"
		if array[i] == carac
			sortie = "ok"
			index = i
		end
		i = i + 1
	end
	return index#, sortie
end 

#variables utiles
alphabet = ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
texteAffiche = ''
i = trouverDansArray(ARGV[0], alphabet)#[0] #i = alphabet.index(ARGV[0].downcase)

#boucle de stockage des lettres de l'alphabet a partir de celle choisie en arugment dans la variable texteAffiche qui sera affichee a la fin
while  i < longueurArgument(alphabet)
   texteAffiche = texteAffiche + alphabet[i]
   i = i + 1
end

puts texteAffiche #affiche l'alphabet complet sur une ligne
puts "\n" #retour a la ligne
