package sportowo;

import java.util.ArrayList;
import java.util.List;

public class AllSportsData {
    private List<Sport> sports = new ArrayList<Sport>();

    public void add(Sport sport) {
        sports.add(sport);
    }
    public void clear(){
    	sports = new ArrayList<Sport>();
    }

    public List<Sport> getAllSportsData(){
        return sports;
    }
}
