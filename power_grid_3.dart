void main() {
  PowerGrid grid = new PowerGrid();
  NuclearPlant nuclear = new NuclearPlant();
  SolarPlant solar = new SolarPlant();

  grid.addPlant(nuclear);
  grid.addPlant(solar);
}

class PowerGrid {
  List<PowerPlant> connectedPlants = [];

  addPlant(PowerPlant plant) {
    plant.turnOn('a while');
    connectedPlants.add(plant);
  }
}

abstract class PowerPlant {
  int costOfEnergy;

  bool turnOn(String duration);
}

class NuclearPlant implements PowerPlant {
  bool turnOn(String timeToStayOn) {
    print('Im a nuclear plant turning on');
    return true;
  }

  int costOfEnergy;
}

class SolarPlant implements PowerPlant {
  bool turnOn(String howLongOn) {
    print('Im a solar plant turning on');
    return false;
  }

  int costOfEnergy;
}
