class Phone {
  String _brand = '';
  int _battery = 0;

  Phone(String brand, int battery) {
    _brand = brand;
    _battery = battery;
  }

  int get battery {
    return _battery;
  }

  // Bug fix: Add battery setter
  set battery(int value) {
    if (value >= 0 && value <= 100) {
      _battery = value;
    }
  }
}

class SmartPhone extends Phone {
  String _system = '';

  // Bug fix: Call parent constructor
  SmartPhone(String brand, int battery, String system)
      : super(brand, battery) {
    _system = system;
  }

  // Bug fix: Remove incorrect @override
  void restart() {
    print('Restarting $_system');
  }
}

void main() {
  Phone p = new Phone('Tecno', 50);

  p.battery = 100;

  print(p.battery);
}
