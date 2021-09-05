package TestNG;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

public class TestNgLogin_vacio {
	private WebDriver driver;
	
	  @BeforeClass
		  public void abrir_chrome() {
			    System.out.println("En este paso abre el navegador google chrome");
				System.setProperty("webdriver.chrome.driver", "./src/test/resources/ChromeDriver/chromedriver.exe");
				driver = new ChromeDriver();
				driver.manage().window().maximize();
				driver.get("http://localhost:8070/login/index.jsp");
		  }
	  @Test
	  public void login() {
			System.out.println("Este paso no se ingresa nombre ni contraseña en la pagina de login");
			driver.findElement(By.id("username")).sendKeys("roly");
			driver.findElement(By.id("password")).sendKeys("12345");
	  }
	  

	  @AfterClass
	  public void salir() {
		  System.out.println("En este paso inicia sesion con los datos ingresados");
			driver.findElement(By.id("loginBtn")).click();
			driver.quit();
	  }
}