#!/usr/bin/env ruby

#affiche l'alphabet en lettres minuscules en une boucle suivi d'un retour a la ligne
#variables utiles
alphabet=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
texteAffiche=''
i=0

#boucle de stockage des lettres de l'alphabet dans la variable texteAffiche qui sera affichee a la fin
while i<alphabet.length()
   texteAffiche=texteAffiche+alphabet[i]
   i=i+1
end

puts texteAffiche #affiche l'alphabet complet sur une ligne
puts "\n" #retour a la ligne
