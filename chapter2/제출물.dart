abstract class Car implements Comparable<Car>              //Car클래스와 subclass가 비교할수 있게 Comparable implement하기
{
  final String company;
  final String year;

  Car(this.company, this.year);

  Car.Car():company = "none", year = "1800";              //여러개의 constructor 생성하기

  int compareTo(Car other)                                //compareTo 작성
  {
    return this.year.compareTo(other.year);
  }

  String toString()
  {
    return "$company $year";
  }


}

class SUV extends Car
{
  final String model;

  SUV(this.model, String comp, String year): super(comp, year);

  @override                                                            //부모에게서 상속받은 toString() override
  String toString()
  {
    return "$model ${super.toString()}";
  }

}
