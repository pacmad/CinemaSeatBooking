package pl.baadamczyk.cinemaseatbooking.dao;

public class SeatArrayFactory {
	private Boolean[][] SeatArray;
	
	public SeatArrayFactory() {
		SeatArray = new Boolean[10][20];
		fillSeatArray();		
	}
	//MOCK
	private void fillSeatArray() {
		for(int i = 0; i < SeatArray.length; i++) {
			for(int j = 0; j < SeatArray[0].length; j++) {
				SeatArray[i][j] = false;
				if((i%3 != 0) && (j%2 != 0)) {
					SeatArray[i][j] = true;
				}
			}
		}
	}
	
	public Boolean[][] getSeatArray(int HallId) {
		return SeatArray;
	}
}
