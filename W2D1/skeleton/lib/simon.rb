class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @seq = []
    @sequence_length = 1
    @game_over = false
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    add_random_color
    @seq.each do |c|
      puts c
      sleep 0.5
      system("clear")
      sleep 0.25
    end
  end

  def require_sequence
    puts "Repeat the sequence by entering the color:"
    @seq.each do |color|
      color_input = gets.chomp
      if color != color_input
        @game_over
        break
      end
    end
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    "You rememberd correctly! Next Round!"
  end

  def game_over_message
    puts "Game over!"
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    @seq = []
  end
end
