package model;

import java.util.ArrayList;
import java.util.Iterator;



public class MovieList extends ArrayList<Movie>{
	

	public Movie getByUserName(String title){
		Movie movies = new Movie();
		for(Movie movie : this){
			if(movie.getTitle().equals(title)){
				movies =  movie;
			}
		}
		
		return movies;
	}


	

	
	

}
