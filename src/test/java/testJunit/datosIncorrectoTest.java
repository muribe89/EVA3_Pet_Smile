package testJunit;

import static org.junit.Assert.*;

import org.junit.Test;

import bean.Login_Bean;
import modal.Login_Modal;

public class datosIncorrectoTest {
	Login_Bean user = new Login_Bean();
	Login_Modal modal = new Login_Modal();
	boolean r;
	@Test
	public void test() {
		user.setUsername("roly");
		user.setPassword("4321");
	    r = modal.check_user_name(user);
	    if (r==false) {
			fail("usuario incorrecto");
		}else {
			System.out.println("usuario correcto");
		}
	}

}
