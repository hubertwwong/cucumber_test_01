# a simple class to test out a few things...
# car take a name and speed that it drives at.
# you can move the car in NWSE
class Car
  attr_accessor :name, :speed, :pos_x, :pos_y
  
  def initialize(name, speed)
    @name = name
    @speed = speed.to_i
    @pos_x = 0
    @pos_y = 0
  end
  
  # direction is NSEW
  # time in sec.
  # assume cartesian system.
  def move(direction, time_in_sec)
    time_int = time_in_sec.to_i
    #puts "t " + time_int.to_s + " |s " + @speed.to_s
    #puts "f " + (@speed * time_int).to_s
    
    if direction == 'N' || direction == 'n'
      @pos_y = @speed * time_int
    elsif direction == 'S' || direction == 's'
      @pos_y = -1 * (@speed * time_int)
    elsif direction == 'E' || direction == 'e'
      @pos_x = @speed * time_int
    elsif direction == 'W' || direction == 'w'
      @pos_x = -1 * (@speed * time_int)
    end
    
    #puts @pos_x.to_s + " | " + @pos_y.to_s
  end

end