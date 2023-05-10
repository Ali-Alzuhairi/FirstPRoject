// each and every class has constructor
// if no constructor is explicitly defined
// compiler will provide
// empty constructor with no param
// this is also called default constructor
// if any constructor is defined
// compiler will not provide default constructor
public class House {
  // Characteristic | attributes of House
  //  style , year, hasGarage , squareFootage
  public String style;
  public Integer year;
  public Boolean hasGarage;
  public Integer squareFootage;

  public House() {
    // empty constructor with no param
    System.debug('constructor no param');
  }

  public House(String stylee) {
    this.style = stylee;
  }

  public House(String style,Integer year,Boolean hasGarage,Integer squareFootage) {
    //   this.style     = style;
    //   this.year      = year;
    //   this.hasGarage = hasGarage;
    //   this.squareFootage = squareFootage;
    this(style, year, hasGarage, squareFootage); // we can use this like the up code
  }
}
