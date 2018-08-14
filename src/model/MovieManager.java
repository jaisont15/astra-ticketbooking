package model;

import java.math.BigDecimal;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import com.sun.org.apache.regexp.internal.recompile;


public class MovieManager extends BaseDAO {


	// TODO
	@SuppressWarnings("finally")
	public MovieList findAll() {

		MovieList movielist = new MovieList();
		String sqlQueryString = "Select * from TBL_MOVIE";
		PreparedStatement stmt;
		try {
			// title and a preview of the movie poster. If there is a rating,
			// then the rating must also be displayed alongside the entry.
			stmt = database.prepareStatement(sqlQueryString);
			ResultSet rs = stmt.executeQuery();

			while (rs.next()) {
				// Title VARCHAR(40) NOT NULL CONSTRAINT Title_pk PRIMARY KEY ,
				// Poster VARCHAR(20) ,
				// actors VARCHAR(300),
				// Genre VARCHAR(300) NOT NULL,
				// Director VARCHAR(50),
				// Synopsis VARCHAR(1000),
				// AGEOFRATING VARCHAR(1),
				// rating VARCHAR(1),
				// NUMBEROFRATING VARCHAR(10),
				// relaseDate date
				String Title = rs.getString("Title");
				String Poster = rs.getString("Poster");
				String actors = rs.getString("actors");
				String Genre = rs.getString("Genre");
				String Director = rs.getString("Director");
				String Synopsis = rs.getString("Synopsis");

				String rating = rs.getString("rating");
				String agerating = rs.getString("AGEOFRATING");
				String NUMBEROFRATING = rs.getString("NUMBEROFRATING");
				Date relaseDate = rs.getDate("relaseDate");
				Movie movie = new Movie(Title, Poster, actors, Genre, Director,
						Synopsis, rating, agerating, NUMBEROFRATING, relaseDate);
				movielist.add(movie);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			System.out.println("Wrong sql statement");
			e.printStackTrace();
		} finally {
			return movielist;
		}

	}

	// find special movie from the input

	@SuppressWarnings("finally")
	public MovieList findSpecial(String inpu) {

		String input = inpu.toUpperCase();
		MovieList listmovie = new MovieList();
		MovieList returnList = new MovieList();

		String sqlQueryString = "Select * from TBL_MOVIE where  UPPER(Title) like '%"
				+ input + "%'";

		try {
			PreparedStatement statement = database
					.prepareStatement(sqlQueryString);
			ResultSet rs = statement.executeQuery();

			boolean status = false;

			while (rs.next()) {
				// The following is shown
				// for each movie: title, small version of the poster art,
				// genre, main actors, rating and a link to a page with details
				// of the movie.
				String Title = rs.getString("Title");
				String Poster = rs.getString("Poster");
				String actors = rs.getString("actors");
				String Genre = rs.getString("Genre");
				String Director = rs.getString("Director");
				String Synopsis = rs.getString("Synopsis");

				String rating = rs.getString("rating");
				String agerating = rs.getString("AGEOFRATING");
				String NUMBEROFRATING = rs.getString("NUMBEROFRATING");
				Date relaseDate = rs.getDate("relaseDate");
				Movie movie = new Movie(Title, Poster, actors, Genre, Director,
						Synopsis, rating, agerating, NUMBEROFRATING, relaseDate);
				listmovie.add(movie);
			}
			System.out.println(listmovie.size());
			// ADD FRO THE JUQING
			sqlQueryString = "Select * from TBL_MOVIE where   UPPER(Genre) like '%"
					+ input + "%'";
			statement = database.prepareStatement(sqlQueryString);
			rs = statement.executeQuery();
			while (rs.next()) {
				String Title = rs.getString("Title");
				String Poster = rs.getString("Poster");
				String actors = rs.getString("actors");
				String Genre = rs.getString("Genre");
				String Director = rs.getString("Director");
				String Synopsis = rs.getString("Synopsis");

				String rating = rs.getString("rating");
				String agerating = rs.getString("AGEOFRATING");
				String NUMBEROFRATING = rs.getString("NUMBEROFRATING");
				Date relaseDate = rs.getDate("relaseDate");
				Movie movie = new Movie(Title, Poster, actors, Genre, Director,
						Synopsis, rating, agerating, NUMBEROFRATING, relaseDate);
				listmovie.add(movie);
			}
			System.out.println(listmovie.size());

			returnList = Tool.removeDuplicateWithOrder(listmovie);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			return returnList;
		}
	}

	@SuppressWarnings("finally")
	public MovieList findSpecialOwner(String inpu) {

		String input = inpu.toUpperCase();
		MovieList listmovie = new MovieList();
		MovieList returnList = new MovieList();

		String sqlQueryString = "Select * from TBL_MOVIE where  UPPER(Title) like '%"
				+ input + "%' and CURRENT_DATE >=RELASEDATE ";

		try {
			PreparedStatement statement = database
					.prepareStatement(sqlQueryString);
			ResultSet rs = statement.executeQuery();

			boolean status = false;

			while (rs.next()) {
				// The following is shown
				// for each movie: title, small version of the poster art,
				// genre, main actors, rating and a link to a page with details
				// of the movie.
				String Title = rs.getString("Title");
				String Poster = rs.getString("Poster");
				String actors = rs.getString("actors");
				String Genre = rs.getString("Genre");
				String Director = rs.getString("Director");
				String Synopsis = rs.getString("Synopsis");

				String rating = rs.getString("rating");
				String agerating = rs.getString("AGEOFRATING");
				String NUMBEROFRATING = rs.getString("NUMBEROFRATING");
				Date relaseDate = rs.getDate("relaseDate");
				Movie movie = new Movie(Title, Poster, actors, Genre, Director,
						Synopsis, rating, agerating, NUMBEROFRATING, relaseDate);
				listmovie.add(movie);
			}
			System.out.println(listmovie.size());
			// ADD FRO THE JUQING
			sqlQueryString = "Select * from TBL_MOVIE where   UPPER(Genre) like '%"
					+ input + "%'";
			statement = database.prepareStatement(sqlQueryString);
			rs = statement.executeQuery();
			while (rs.next()) {
				String Title = rs.getString("Title");
				String Poster = rs.getString("Poster");
				String actors = rs.getString("actors");
				String Genre = rs.getString("Genre");
				String Director = rs.getString("Director");
				String Synopsis = rs.getString("Synopsis");

				String rating = rs.getString("rating");
				String agerating = rs.getString("AGEOFRATING");
				String NUMBEROFRATING = rs.getString("NUMBEROFRATING");
				Date relaseDate = rs.getDate("relaseDate");
				Movie movie = new Movie(Title, Poster, actors, Genre, Director,
						Synopsis, rating, agerating, NUMBEROFRATING, relaseDate);
				listmovie.add(movie);
			}
			System.out.println(listmovie.size());

			returnList = Tool.removeDuplicateWithOrder(listmovie);

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			return returnList;
		}
	}


	public boolean addMovie(Movie movie) {

		String selectSQLString = "SELECT * FROM TBL_MOVIE WHERE Title = '"
				+ movie.getTitle() + "'";
		boolean syncStaus = false;
		PreparedStatement stmt;

		try {
			stmt = database.prepareStatement(selectSQLString);
			ResultSet rs = stmt.executeQuery();
			if (rs.next()) {
				System.out.println("0");
			} else {
				// TODO
				String createSQLString = "INSERT INTO TBL_MOVIE VALUES (?,?,?,?,?,?,?,'0','0',?)"; // 这个地方要完整的写下来

				// INSERT INTO TBL_MOVIE VALUES ('METROPOLIS',
				// 'pMETROPOLIS','wangzhou,huangshuo,hanjiji,xiaopang',
				// 'Drama , Action & Adventure , Art House & International ,
				// Classics , Science Fiction & Fantasy','David Dobkin',
				// 'Big city lawyer Hank Palmer returns to his childhood home
				// where his father, nnects with his estranged family','7',
				// '3','5','2014-06-14');
				stmt = database.prepareStatement(createSQLString);

				stmt.setString(1, movie.getTitle());
				stmt.setString(2, movie.getPoster());
				stmt.setString(3, movie.getActors());
				stmt.setString(4, movie.getGenre());
				stmt.setString(5, movie.getDirector());
				stmt.setString(6, movie.getSynopsis());
				stmt.setString(7, movie.getAGEOFRATING()); // 0
				SimpleDateFormat sDateFormat = new SimpleDateFormat(
						"yyyy-MM-dd");
					String date = sDateFormat.format(movie.getRelaseDate());
				stmt.setString(8, String.valueOf(movie.getRelaseDate()));

				stmt.executeUpdate();

				syncStaus = true;

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			return syncStaus;
		}
	}

	// set the release date here
	@SuppressWarnings("finally")
	public boolean setRelaseDate(String moveName, Date date) {
		boolean setStatus = false;

		String SQL = "update TBL_MOVIE set RELASEDATE = ? where TITLE = ?";

		try {
			PreparedStatement pre = database.prepareStatement(SQL);
			SimpleDateFormat sDateFormat = new SimpleDateFormat("yyyy-MM-dd");
			String dates = sDateFormat.format(date);
			pre.setString(1, moveName);
			pre.setString(2, dates);

			pre.executeUpdate();

			setStatus = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			return setStatus;
		}
	}


	public Movie RateMovie(Movie movie, String rating) {
		// RateMovie(movie)

		boolean syncStaus = false;

		int orginalNumber = Integer.parseInt(movie.getNUMBEROFRATING());

		double orginalRating = Double.parseDouble(movie.getRating())
				* orginalNumber;
		PreparedStatement stmt;

		try {

			String updateSQL = "update TBL_MOVIE set rating = ? where Title = ?";

			stmt = database.prepareStatement(updateSQL);

			java.text.DecimalFormat df = new java.text.DecimalFormat("#.00");
			double rateNew = (Double.parseDouble(rating) + orginalRating)
					/ (orginalNumber + 1);
			df.format(rateNew);
			String newRating = Double.toString(rateNew);
			stmt.setString(1, newRating);
			stmt.setString(2, movie.getTitle());

			movie.setRating(newRating);
			movie.setNUMBEROFRATING(Integer.toString((orginalNumber + 1)));

			int rows = stmt.executeUpdate();
			if (rows > 0) {
				System.out.println("operate successfully");
				syncStaus = true;
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			return movie;
		}
	}

}
