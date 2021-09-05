package modal;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import bean.Login_Bean;
import common_things.DB_Connection;
public class Login_Modal {
  public boolean check_user_name(Login_Bean obj_Login_Bean){
  boolean flag=false;
  DB_Connection obj_DB_Connection=new DB_Connection();
  Connection connection=obj_DB_Connection.getConnection();
  PreparedStatement ps=null;
  ResultSet rs=null;
  try {
   String qurey="SELECT u.username, u.password, p.rut, p.nombre, p.apellido, p.telefono\r\n" + 
   		"FROM banco_platinum.usuario u INNER JOIN banco_platinum.persona p \r\n" + 
   		"ON u.rut = p.rut\r\n" + 
   		"WHERE u.username=? and u.password=?";
   ps=connection.prepareStatement(qurey);
   ps.setString(1, obj_Login_Bean.getUsername());
   ps.setString(2, obj_Login_Bean.getPassword());
   System.out.println(ps);
   rs=ps.executeQuery();
   
   if(rs.next()){
	   System.out.println(rs.getString(3));
	   obj_Login_Bean.setRut(rs.getString(3));
	   System.out.println(rs.getString(4));
	   obj_Login_Bean.setNombre(rs.getString(4));
	   System.out.println(rs.getString(5));
	   obj_Login_Bean.setApellido(rs.getString(5));
	   System.out.println(rs.getString(6));
	   obj_Login_Bean.setTelefono(rs.getString(6));
    flag=true;
   }else {
	   System.out.println("Inicio de sesión fallido, usuario y/o contraseña son incorrectos");
   }
  } catch (Exception e) {
	  // TODO: handle exception
 }finally {
  try {
   if(connection!=null){
    connection.close();
   }
 } catch (Exception e2) {
	 // TODO: handle exception
 }
 }
 return flag;
 }
}
