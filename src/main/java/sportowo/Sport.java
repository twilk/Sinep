package sportowo;

public class Sport {
	
	private String nazwa = "";
	private String ilosc = "";
	private String kategoria = "";
	private String wynik = "";
	private String opis = "";
	
	
	public Sport() {
		super();
	}
	
	

	public Sport(String nazwa, String ilosc, String kategoria, String wynik, String opis) {
		super();
		this.nazwa = nazwa;
		this.ilosc = ilosc;
		this.kategoria = kategoria;
		this.wynik = wynik;
		this.opis = opis;
	}



	public String getNazwa() {
		return nazwa;
	}



	public void setNazwa(String nazwa) {
		this.nazwa = nazwa;
	}



	public String getIlosc() {
		return ilosc;
	}



	public void setIlosc(String ilosc) {
		this.ilosc = ilosc;
	}



	public String getKategoria() {
		return kategoria;
	}



	public void setKategoria(String kategoria) {
		this.kategoria = kategoria;
	}



	public String getWynik() {
		return wynik;
	}



	public void setWynik(String wynik) {
		this.wynik = wynik;
	}



	public String getOpis() {
		return opis;
	}



	public void setOpis(String opis) {
		this.opis = opis;
	}

	
	
}
