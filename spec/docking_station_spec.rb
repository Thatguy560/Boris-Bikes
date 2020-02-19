require 'docking_station'
describe DockingStation do

  #personal work I've done
  #docking_station = DockingStation.new
  #it {expect(docking_station).to respond_to

  it { is_expected.to respond_to :release_bike }

  docking_station = DockingStation.new
  bike = docking_station.release_bike

  it 'responds to method "working"' do
    # expect(bike.working?).to eq nil
    expect(bike).to respond_to :working?
    end
  end
