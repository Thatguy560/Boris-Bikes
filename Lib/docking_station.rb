require_relative "./bike.rb"
class DockingStation
attr_reader :station #Allows us to read instance variables

  def release_bike
    fail "No Bikes avaliable" unless @station
   Bike.new
  end

  def dock(bike)
    @station = bike
    fail "Bikes are overcapacity" unless @station
    Bike.new
   end
 end
