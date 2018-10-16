/*
  File: TestLogin.java
  August 2002
*/

import java.io.*;
import java.util.*;
import java.sql.*;

/**
 * This program reads a user's pass.dat and connects to Oracle.
 *
 * @author Paul Werstein
 */

public class Employees {

    private static ArrayList<employee> employeeList = new ArrayList<employee>();


    public static void main (String[] args) {
	new Employees().go();


        Collections.sort(employeeList);
        System.out.println(employeeList);
    }

    // This is the function that does all the work
    private void go() {

	// Read pass.dat
	UserPass login = new UserPass();
        String sql = "SELECT fname, lname, salary FROM employee";
	String user = login.getUserName();
	String pass = login.getPassWord();
	String host = "silver";
;

	Connection con = null;
	try {
	    // Register the driver and connect to Oracle
	    DriverManager.registerDriver 
		(new oracle.jdbc.driver.OracleDriver());
	    String url = "jdbc:oracle:thin:@" + host + ":1527:cosc344";
            System.out.println("url: " + url);
	    con = DriverManager.getConnection(url, user, pass);

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            System.out.println("Connected to Oracle");
     
            while (rs.next()) {
                employee person = new employee(rs.getString("fname"), rs.getString("lname"), Integer.parseInt(rs.getString("salary")));
                employeeList.add(person);
            
                }
	} catch (SQLException e) {
	    System.out.println(e.getMessage());
	    System.exit(1);

	} finally {
	    if (con != null) {
		try {
		    con.close();
		} catch (SQLException e) {
		    quit(e.getMessage());
		}
	    }
	}
    }  // end go()

    public static class employee implements Comparable<employee>{
        public String firstName;
        public String lastName;
        public int salary;

        public employee(String firstName, String lastName, int salary) {
            this.firstName = firstName;
            this.lastName = lastName;
            this.salary = salary;
        }

        public String toString(){
            return (firstName + " " + lastName + ": " + salary);
        }

        @Override
        public int compareTo(final employee o) {
            if ((salary - o.salary) != 0) {
                return salary - o.salary;
            }
            return 0;
        }
    }

    

    // Used to output an error message and exit
    private void quit(String message) {
	System.err.println(message);
	System.exit(1);
    }

} // end class TestLogin


