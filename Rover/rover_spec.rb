require 'rspec'
require_relative 'run'
require_relative 'rover'

describe Rover do

  it 'starts at the start' do
    rover = Rover.new
    expect(rover.curr_dir).to eq 'North'
    expect(rover.hor_pos).to eq 0
    expect(rover.ver_pos).to eq 0
  end

  it 'can set a heading' do
    rover = Rover.new

    direction = ['North', 'South', 'East', 'West'].sample
    rover.curr_dir = direction
    expect(rover.curr_dir).to eq direction
  end

  it 'can move forward' do
    rover = Rover.new
    rover.move('F')

    expect(rover.hor_pos).to eq 0
    expect(rover.ver_pos).to eq 1
  end

  it 'can turn right' do
    rover = Rover.new
    rover.move('R')
    rover.move('F')

    expect(rover.curr_dir).to eq 'East'
    expect(rover.hor_pos).to eq 1
    expect(rover.ver_pos).to eq 0
  end

  it 'can turn left' do
    rover = Rover.new
    rover.move('L')

    expect(rover.curr_dir).to eq 'West'
  end

  it 'can turn around' do
    rover = Rover.new
    4.times { rover.move('L') }
    expect(rover.curr_dir).to eq 'North'
  end

  it 'can follow directions' do
    rover = Rover.new
    rover.move('LF')

    expect(rover.curr_dir).to eq 'West'
    expect(rover.hor_pos).to eq -1
    expect(rover.ver_pos).to eq 0
  end

  it 'can follow long directions' do
    rover = Rover.new
    rover.move('FRFFLFRRRRF')

    expect(rover.curr_dir).to eq 'North'
    expect(rover.hor_pos).to eq 2
    expect(rover.ver_pos).to eq 3
  end
end