package sportowo;

import java.util.ArrayList;
import java.util.List;

public class AWF {
	
	private List<Sport> awfData = new ArrayList<Sport>();
	
	public void add(Sport sport){
		Sport newSport = new Sport(sport.getNazwa(), sport.getIlosc(), sport.getKategoria(), sport.getWynik(), sport.getOpis() );
		awfData.add(newSport);
	}
	
	public List<Sport> getAllSports(){
		return awfData;
	}
	
	public int size()
	{
		return awfData.size();
	}

	public void clear(){
    	awfData = new ArrayList<Sport>();
    }
}
