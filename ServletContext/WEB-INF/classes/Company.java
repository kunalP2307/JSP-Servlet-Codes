

import java.io.Serializable;

public class Company implements Serializable{
	
	int companyId;
	String companyName;
	double turnOver;

	public Company(int companyId, String companyName, double turnOver) {
		super();
		this.companyId = companyId;
		this.companyName = companyName;
		this.turnOver = turnOver;
	}

	@Override
	public String toString() {
		return "Company [companyId=" + companyId + ", companyName=" + companyName + ", turnOver=" + turnOver + "]";
	}
	
	
}
