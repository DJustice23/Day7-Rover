class Rover
  attr_reader :moves
  attr_accessor :curr_dir
  attr_reader :hor_pos
  attr_reader :ver_pos

  def initialize(x=0, y=0, curr_dir='North')
    @hor_pos = x
    @ver_pos = y
    @moves = []
    @curr_dir = curr_dir
  end


  def move(m)
    @moves = m.split('')
    puts @moves
    @moves.each do |d|
      if d == 'L' && @curr_dir == 'North'
        @curr_dir = 'West'
      elsif d == 'L' && @curr_dir == 'South'
        @curr_dir = 'East'
      elsif d == 'L' && @curr_dir == 'East'
        @curr_dir = 'North'
      elsif d == 'L' && @curr_dir == 'West'
        @curr_dir = 'South'
      end
      if d == 'R' && @curr_dir == 'North'
        @curr_dir = 'East'
      elsif d == 'R' && @curr_dir == 'West'
        @curr_dir = 'North'
      elsif d == 'R' && @curr_dir == 'East'
        @curr_dir = 'South'
      elsif d == 'R' && @curr_dir == 'South'
        @curr_dir = 'West'
      end
      if d == 'F' && @curr_dir == 'North'
        @ver_pos += 1
      elsif d == 'F' && @curr_dir == 'South'
        @ver_pos -= 1
      elsif d == 'F' && @curr_dir == 'East'
        @hor_pos += 1
      elsif d == 'F' && @curr_dir == 'West'
        @hor_pos -= 1
      end
    end
  end
end