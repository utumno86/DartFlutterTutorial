void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();

  grid.addPlant(nuclear);
}

class PowerGrid {
  List<NuclearPlant> connectedPlants = [];

  addPlant(NuclearPlant plant) {
    plant.turnOn();
    connectedPlants.add(plant);
  }
}

class NuclearPlant {
  turnOn() {
    print('Im a nuclear plant turning on');
  }
}
