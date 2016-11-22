package edu.colorado.csci5828.remotelypossible.dlap.util;

public class User {
	
  //If these role are changed, navbar.jsp needs to be udated
  public static String ROLE_NONE = new String("NONE_ROLE");
  public static String ROLE_STUDENT = new String("Student");
  public static String ROLE_FACULTY = new String("Faculty");
  public static String ROLE_ADMIN = new String("Admin");
  
  
	private boolean authenticated;
	private String name;
	private String role;
	private String uid;
	
	public User()
	{
		authenticated = false;
		name = "nameless";
		role = ROLE_NONE;
	}
	
	public User(String username)
	{
		authenticated = false;
		name = username;
		role = ROLE_NONE;
	}
	public User(String username, String role)
  {
    authenticated = false;
    setName(username);
    setRole(role);
  }
	
	public boolean isAuthenticated()
	{
		return authenticated;
	}
	
	public void setAuth(boolean b)
	{
		authenticated = b;
	}
	
	public String getName()
	{
		return name;
	}
	
	public void setName(String username)
	{
		name = username;
	}
	
	public String getRole()
	{
		return role;
	}
	
	public void setRole(String newRole)
	{
		role = newRole;
	}
	
	public String getUID()
	{
		return uid;
	}
	
	public void setUID(String newUID)
	{
		uid = newUID;
	}
}
