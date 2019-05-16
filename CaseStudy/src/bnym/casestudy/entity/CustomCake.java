package bnym.casestudy.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.Future;

@Entity
public class CustomCake {
	//===============ENUM CAKE SIZE==========================
	
		public enum CakeSize {

			SIX_INCH(35.0, "Serves 6-12 - $35.0"),
			EIGHT_INCH(55.0, "Serves 13-23  - $50.0"), 
			TEN_INCH(90.0, "Serves 24-36  - $75.0");
			

			private Double price;
			private String desc;
			
			
			//===============CONSTRUCTOR==========================

			CakeSize(Double price, String desc) {
				this.price = price;
				this.desc = desc;
			}
			
			//===============GETTERS AND SETTERS==========================

			public Double getPrice() {
				return price;
			}

			public void setPrice(Double price) {
				this.price = price;
			}

			public String getDesc() {
				return desc;
			}

			public void setDesc(String desc) {
				this.desc = desc;
			}
			
			
			
		}
		
		//===============ENUM CAKE FROSTING==========================

		public enum CakeFrosting {

			BUTTERCREAM(10.0, "Vanilla/Chocolate frosting - $10.0"),
			CHOCOLATE_GANACHE(15.0, "Ganache(Dark/Milk)  - $15.0"),
			FRESH_CREAM(15.0, "Whipped Cream  - $15.0"),
			CREAM_CHEESE(12.0, "Cream Cheese - $12.0"),
			FONDANT(20.0, "Marshmallow Fondant - $20.0");

			
			private Double price;
			private String desc;

			
			//===============CONSTRUCTOR==========================
			CakeFrosting(Double price, String desc) {
				this.price = price;
				this.desc = desc;
			}

			//===============GETTERS AND SETTERS==========================
			public Double getPrice() {
				return price;
			}

			public void setPrice(Double price) {
				this.price = price;
			}

			public String getDesc() {
				return desc;
			}

			public void setDesc(String desc) {
				this.desc = desc;
			}
			
			
		}
		
		//===============ENUM CAKE FILLINGS==========================
		
		public enum CakeFilling {
			
			BUTTERCREAM_FILLING(10.0, "Vanilla/Chocolate Filling - $10.0"),
			CHOCOLATE_GANACHE_FILLING(10.0, "Ganache(Dark/Milk)  - $10.0"), 
			FRESH_FRUITS(15.0, "Fresh Fruit Filling - $15.0"),
			CREAM_CHEESE(12.0, "Cream Cheese Filling - $12.0"),
			FRESH_CREAM(12.0, "Fresh Cream Filling - $12.0");
			
			private Double price;
			private String desc;
			
			
			//===============CONSTRUCTOR==========================
			
			private CakeFilling(Double price, String desc) {
				this.price = price;
				this.desc = desc;
			}


			//===============GETTERS AND SETTERS==========================
			
			public Double getPrice() {
				return price;
			}


			public void setPrice(Double price) {
				this.price = price;
			}


			public String getDesc() {
				return desc;
			}


			public void setDesc(String desc) {
				this.desc = desc;
			}
			
			
			
			
		}
		
		//===============ENUM CAKE fLAVOR==========================
		public enum CakeFlavor {
			
			RED_VELVET(15.0, "Red Velvet - $15.0"),
			POUND_CAKE(10.0, "Pound(Chocolate/Vanilla)  - $10.0"), 
			MOCHA(12.0, "Mocha Coffee Cake - $12.0"),
			NEWYORK_STYLE_CHEESECAKE(20.0, "NewYork Style Cheese Cake - $20.0"),
			BROWNIES(12.0, "Fudge Brownies - $12.0"),
			BLACK_FOREST(12.0, "Black Forest - $12.0"),
			NANDO_CHOCOLATE(12.0, "Nando Style Chocolate Cake - $12.0"),
			DENSE_CHOCOLATE(15.0, "Dense Chocolate Cake - $15.0"),
			KENTUCKY_BUTTER(12.0, "Kentucky Butter(Chocolate/Vanilla) - $12.0"),
			COFFEE_CAKE(12.0, "Coffee Cake - $12.0");
			
			private Double price;
			private String desc;
			
			
			//===============CONSTRUCTOR==========================
			
			private CakeFlavor(Double price, String desc) {
				this.price = price;
				this.desc = desc;
			}

			
			//===============GETTERS AND SETTERS==========================
			
			public Double getPrice() {
				return price;
			}


			public void setPrice(Double price) {
				this.price = price;
			}


			public String getDesc() {
				return desc;
			}


			public void setDesc(String desc) {
				this.desc = desc;
			}
			
		}

		@Id
		@GeneratedValue(strategy = GenerationType.AUTO)
		private Long id;
		
		@Enumerated(EnumType.STRING)
		private CakeSize cakeSize;
		private Double priceOnSize = 0.0;
		
		@Enumerated(EnumType.STRING)
		private CakeFrosting cakeFrosting;
		private Double priceOnFrosting = 0.0;
		
		@Enumerated(EnumType.STRING)
		private CakeFilling cakeFilling;
		private Double priceOnFilling = 0.0;
		
		
		@Enumerated(EnumType.STRING)
		private CakeFlavor cakeFlavor;
		private Double priceOnFlavor = 0.0;
		
		private Double totalPrice = 0.0;
		

	
	  @Future(message = "Please select a future date !!!")
	  Date orderDate;
	 
	
		
		
		public CustomCake(CakeSize cakeSize, CakeFrosting cakeFrosting,
				CakeFilling cakeFilling, CakeFlavor cakeFlavor){
			
			this.cakeSize = cakeSize;
			this.priceOnSize = cakeSize.price;
			
			this.cakeFrosting = cakeFrosting;
			this.priceOnFrosting = cakeFrosting.price;
			
			this.cakeFilling = cakeFilling;
			this.priceOnFilling = cakeFilling.price;
			
			this.cakeFlavor = cakeFlavor;
			this.priceOnFlavor = cakeFlavor.price;
			this.totalPrice = cakeSize.price + cakeFrosting.price + cakeFlavor.price + cakeFilling.price;
		}

		//Getters and setters

		public Long getId() {
			return id;
		}

		public void setId(Long id) {
			this.id = id;
		}

		public CakeSize getCakeSize() {
			return cakeSize;
		}

		public void setCakeSize(CakeSize cakeSize) {
			this.cakeSize = cakeSize;
		}

		public CakeFrosting getCakeFrosting() {
			return cakeFrosting;
		}

		public void setCakeFrosting(CakeFrosting cakeFrosting) {
			this.cakeFrosting = cakeFrosting;
		}

		public Double getTotalPrice() {
			return totalPrice;
		}

		public void setTotalPrice(Double totalPrice) {
			this.totalPrice = totalPrice;
		}


		public Double getPriceOnSize() {
			return priceOnSize;
		}


		public void setPriceOnSize(Double priceOnSize) {
			this.priceOnSize = priceOnSize;
		}


		public Double getPriceOnFrosting() {
			return priceOnFrosting;
		}


		public void setPriceOnFrosting(Double priceOnFrosting) {
			this.priceOnFrosting = priceOnFrosting;
		}




		public CakeFilling getCakeFilling() {
			return cakeFilling;
		}




		public void setCakeFilling(CakeFilling cakeFilling) {
			this.cakeFilling = cakeFilling;
		}




		public Double getPriceOnFilling() {
			return priceOnFilling;
		}




		public void setPriceOnFilling(Double priceOnFilling) {
			this.priceOnFilling = priceOnFilling;
		}




		public CakeFlavor getCakeFlavor() {
			return cakeFlavor;
		}




		public void setCakeFlavor(CakeFlavor cakeFlavor) {
			this.cakeFlavor = cakeFlavor;
		}




		public Double getPriceOnFlavor() {
			return priceOnFlavor;
		}




		public void setPriceOnFlavor(Double priceOnFlavor) {
			this.priceOnFlavor = priceOnFlavor;
		}
	
	  public Date getOrderDate() { return orderDate; }
	  
	  public void setOrderDate(Date orderDate) { this.orderDate = orderDate; }
	 
		

	}


