package pl.baadamczyk.cinemaseatbooking.helper;

import pl.baadamczyk.cinemaseatbooking.dao.SeatArrayFactory;

public class IndexHelper {
	
	private SeatArrayFactory ArrayFactory = new SeatArrayFactory();
	private Boolean[][] SeatArray = ArrayFactory.getSeatArray(1);	
	private int Rows = SeatArray.length;
	private int SeatsInRow = SeatArray[0].length; 
	
	public String generateSeatLayout() {
		StringBuilder layoutMarkup = new StringBuilder();
		
		for(int i = 0; i < Rows; i++) {
			layoutMarkup.append("<div class=\"row\">");
			for(int j = 0; j < SeatsInRow; j++) {
				String seatID = (i+1)+"-"+(j+1);
				if(SeatArray[i][j]) {						
					layoutMarkup.append("<input type=\"button\" class=\"availableSeat\" value=\""+seatID+"\"/>"); 
				} else {
					layoutMarkup.append("<input type=\"button\" class=\"occupiedSeat\" value=\""+seatID+"\"/>");
				}
			}
			layoutMarkup.append("</br></div>");			
		}
		return layoutMarkup.toString();		
	}

}
