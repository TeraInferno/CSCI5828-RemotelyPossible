package edu.colorado.csci5828.remotelypossible.dlap.util;

public class User {
	
	private boolean authenticated;
	private String name;
	private String role;
	
	public User()
	{
		authenticated = false;
		name = "nameless";
		role = "none";
	}
	
	public User(String username)
	{
		authenticated = false;
		name = username;
		role = "none";
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
}
