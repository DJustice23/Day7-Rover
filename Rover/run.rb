require_relative 'rover'
curiosity = Rover.new


curiosity.move 'LLFFLF'
puts "Curiosity is facing: #{curiosity.curr_dir}", "X-axis: #{curiosity.hor_pos}", "Y-axis: #{curiosity.ver_pos}"