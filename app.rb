require 'bundler'
Bundler.require 
 
require_relative 'lib/player'
require_relative 'lib/boardcase'
require_relative 'lib/board'


#puts "Veuillez saisir le nom des joueurs."
#puts "Le plus jeune, c'est toi qui commence, quel est ton blaze ?"
#print">"
#nom_joueur_1 = gets.chomp 
#puts "Merci."
#puts "Joueur 2, le vieillard à toi, quel est ton blaze?"
#nom_joueur_2 = gets.chomp
#puts "Eeeeeh merci ! On va pouvoir continuer.."

#player1 = Player.new("#{nom_joueur_1}", "X")
#player2 = Player.new("#{nom_joueur_2}", "O")

#puts "Super, on a 2 joueurs qui vont s'affronter au morpion, faites du bruit pour : #{nom_joueur_1} et #{nom_joueur_2} !!!"

  @array_case = []

  @array_case << BoardCase.new("A1")
  @array_case << BoardCase.new("A2")
  @array_case << BoardCase.new("A3")
  @array_case << BoardCase.new("B1")
  @array_case << BoardCase.new("B2")
  @array_case << BoardCase.new("B3")
  @array_case << BoardCase.new("C1")
  @array_case << BoardCase.new("C2")
  @array_case << BoardCase.new("C3")




puts @array_case.class


