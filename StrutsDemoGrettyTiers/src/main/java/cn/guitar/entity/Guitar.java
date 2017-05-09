package cn.guitar.entity;

public class Guitar {

  private String serialNumber, builder, model, type, backWood, topWood;
  private double price;


  public String getSerialNumber() {
    return serialNumber;
  }

  public double getPrice() {
    return price;
  }  

public void setSerialNumber(String serialNumber) {
	this.serialNumber = serialNumber;
}

public void setBuilder(String builder) {
	this.builder = builder;
}

public void setModel(String model) {
	this.model = model;
}

public void setType(String type) {
	this.type = type;
}

public void setBackWood(String backWood) {
	this.backWood = backWood;
}

public void setTopWood(String topWood) {
	this.topWood = topWood;
}

public void setPrice(double price) {
	this.price = price;
}

public void setPrice(float newPrice) {
    this.price = newPrice;
  }
  public String getBuilder() {
    return builder;
  }
  public String getModel() {
    return model;
  }
  public String getType() {
    return type;
  }
  public String getBackWood() {
    return backWood;
  }
  public String getTopWood() {
    return topWood;
  }
}
