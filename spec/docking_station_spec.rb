require 'docking_station'
describe DockingStation do

  #personal work I've done
  #docking_station = DockingStation.new
  #it {expect(docking_station).to respond_to

  it { is_expected.to respond_to :release_bike }

  it 'responds to method "working?"' do
    # expect(bike.working?).to eq nil
     bike = Bike.new
    expect(bike).to be_working
  end

#  it 'responds to method "dock"' do
#    bike = Bike.new
#    expect{subject.dock(bike).to respond_to :dock }
#  end

  it 'docks bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.station).to eq bike #the bike that has been docked
    # in the station
  end

  it 'raises error if no bikes' do
  expect{subject.release_bike}.to raise_error("No Bikes avaliable")
    end
    it 'raises error if docking station is full' do
    expect{subject.dock(bike)}.to raise_error("Bikes are overcapacity")
  end
end
