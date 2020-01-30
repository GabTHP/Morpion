require 'pry'
require_relative 'board'
require_relative  'player'
require_relative 'boardcase'


class Game

  attr_accessor :players, :board

  def initialize
    @players = []
    @board = Board.new
  end

  
  def name_to_save
    puts "Le plus jeune commence, quel est ton blaze ?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "O")

    puts "Joueur 2, le vieillard à toi, quel est ton blaze?"
    print "> "
    @players << Player.new(gets.chomp.to_s, "X")
  end

  def select_player
     while @board.game_win == false
     @players.map {|item| choose_case(item)}
   end
  end

  def choose_case (player)
    if @board.game_win == true
      puts "#{player.name} Remporte la mache quel.le Homme/Femme !"
    elsif @board.game_nul == true
      puts "Personne ne gagne, match nul!!"
    else
      puts "#{player.name} à toi de jouer,#{player.symbol} indique une case et appuie sur entrée (A1, A2, A3...,C3)"
      print "> "
      @board.put_symbol(gets.chomp.to_s, player.symbol)
      @board.board_display
      #@board.party_win
    end
  end

  def ask_new_game
    puts " Alors on recommence ? Ok, ça marche tape 'oui' et on redémarre, sinon appuie sur n'importe quoi on s'en fou.. "
    print "> "
    new_game = gets.chomp.to_s

    if new_game == "oui"
      @board.array_cases.map! { |item| item.content = " " }
      self.perform
    end
  end

  def perform
    name_to_save
    puts "Le nom du joueur 1 est #{@players[0].name} et son symbole est #{@players[0].symbol}"
    puts "Le nom du joueur 2 est #{@players[1].name} et son symbole est #{@players[1].symbol}"
    @board.board_display

    select_player
    ask_new_game
  end
end