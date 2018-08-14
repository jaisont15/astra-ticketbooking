package model;

import java.sql.Date;
import java.sql.Time;
import java.util.ArrayList;
import java.util.Iterator;

public class ShowList extends ArrayList<Show> {


	public int returnTicketNumber(Date date, Time time) {
		int tickets = 0;
		for (Iterator iter = this.iterator(); iter.hasNext();) {
			// System.out.println(((Show)iter.next()).getTitle());

			Show show = (Show) iter.next();
			if(show.getDateSHow().compareTo(date) == 0&&show.getShowing().compareTo(time) == 0){
				tickets = Integer.parseInt(show.getSeatLeft());
			}
		}
		return tickets;
	}

}
