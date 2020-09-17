package com.candidateDao;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.Candidate.bean.Candidate;



//import jdk.internal.org.jline.reader.Candidate;

public class CandidateDao {

    public int registerCandidate(Candidate candidate) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO candidate" +
            "  (id, first_name, last_name, email, hrName, domain, dateJoined, address, contact, adhar_no) VALUES " +
            " (?, ?, ?, ?,?,?, ?,?,?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/lead_db?useSSL=false", "root", "root");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setInt(1, 0);
            preparedStatement.setString(2, candidate.getFirstName());
            preparedStatement.setString(3, candidate.getLastName());
            preparedStatement.setString(4, candidate.getEmail());
            preparedStatement.setString(5, candidate.getHrName());
            preparedStatement.setString(6, candidate.getDomain());
            preparedStatement.setString(7, candidate.getDateJoined());
            preparedStatement.setString(8, candidate.getAddress());
            preparedStatement.setString(9, candidate.getContact());
            preparedStatement.setString(10, candidate.getAdharNo());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
