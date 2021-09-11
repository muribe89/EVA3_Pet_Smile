package StepDefinition.caso1;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;


public class Steps_LoginCorrecto {
	private WebDriver driver;
	
	@Given("Abrir Chrome")
	public void abrir_Chrome(){
		System.out.println("En este paso abre el navegador google chrome");
		System.setProperty("webdriver.chrome.driver", "./src/test/resources/ChromeDriver/chromedriver.exe");
		driver = new ChromeDriver();
		driver.manage().window().maximize();
		driver.get("http://localhost:8070/clinica/index.jsp");
	}
	
	@When("ingresar Username {string} y Password {string}")
	public void ingresar_Username_y_Password(String string, String string2) throws InterruptedException{
		System.out.println("En este paso ingresa las credenciales de usuario");
		System.out.println("Este paso ingresa el nombre de usuario y contraseña en la pagina de login");
		driver.findElement(By.id("nombreUsuario")).sendKeys(string);
		Thread.sleep(1000);
		driver.findElement(By.id("password")).sendKeys(string2);
		Thread.sleep(1000);
	}
	
	@Then("inicia sesion")
	public void inicia_sesion() throws InterruptedException{
		System.out.println("En este paso inicia sesion con los datos ingresados desde nuestro archivo Mytest.feature");
		driver.findElement(By.id("loginBtn")).click();
		Thread.sleep(1000);
		driver.findElement(By.id("salir")).click();
		Thread.sleep(1000);
		driver.quit();
	}
}
