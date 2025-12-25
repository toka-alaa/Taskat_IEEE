class Employee {
  String name;
  String nationalId;
  static double salary = 1500.0;
  String gender;
  int availableVacations = 7;
  static double deductionPerDay = 85.5;
  int availablePermissionHours = 20;
  static double deductionPerHour = 15.5;
  double actualSalary;

  Employee(this.name, this.nationalId, this.gender) : actualSalary = salary;

  void view() {
    print(name);
    print(nationalId);
    print(actualSalary.toStringAsFixed(2));
  }

  void viewDetailed() {
    view();
    print(gender);
    print(availableVacations);
    print(availablePermissionHours);
    double totalDeduction = (7 - availableVacations) * deductionPerDay + (20 - availablePermissionHours) * deductionPerHour;
    print(totalDeduction.toStringAsFixed(2));
  }

  void takeVacation(int days) {
    if (days <= availableVacations) {
      availableVacations -= days;
    } else {
      int extraDays = days - availableVacations;
      actualSalary -= extraDays * deductionPerDay;
      availableVacations = 0;
    }
  }

  void takePermission(int hours) {
    if (hours <= availablePermissionHours) {
      availablePermissionHours -= hours;
    } else {
      int extraHours = hours - availablePermissionHours;
      actualSalary -= extraHours * deductionPerHour;
      availablePermissionHours = 0;
    }
  }

}