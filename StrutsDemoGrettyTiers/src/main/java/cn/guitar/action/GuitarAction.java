package cn.guitar.action;

	import com.opensymphony.xwork2.ActionSupport;
    import cn.guitar.dao.GuitarDaoImpl;
    import cn.guitar.entity.Guitar;
    import cn.guitar.service.GuitarService;
    import java.util.List;
    import javax.servlet.http.HttpServletRequest;
    import org.apache.struts2.ServletActionContext;


	public class GuitarAction extends ActionSupport
	{
		private String serialNumber,builder,model,type,backWood,topWood; 
		private double price;
		private static final long serialVersionUID = 1L;
		public String getSerialNumber() {
			return serialNumber;
		}
		public void setSerialNumber(String serialNumber) {
			this.serialNumber = serialNumber;
		}
		public String getBuilder() {
			return builder;
		}
		public void setBuilder(String builder) {
			this.builder = builder;
		}
		public String getModel() {
			return model;
		}
		public void setModel(String model) {
			this.model = model;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getBackWood() {
			return backWood;
		}
		public void setBackWood(String backWood) {
			this.backWood = backWood;
		}
		public String getTopWood() {
			return topWood;
		}
		public void setTopWood(String topWood) {
			this.topWood = topWood;
		}
		public double getPrice() {
			return price;
		}
		public void setPrice(double price) {
			this.price = price;
		}		
		

		public String search() {
			GuitarService gtservice=new GuitarService();
			GuitarDaoImpl gtdaoimpl=new GuitarDaoImpl();
			gtservice.setGuitarDao(gtdaoimpl);
			HttpServletRequest request = ServletActionContext.getRequest();
			List<Guitar> guitarlist=gtservice.search(getModel());
			request.setAttribute("guitarlist",guitarlist);
			return SUCCESS;
		}
	
	}

