package com.index.model;

public class IndexDTO {
		private int PNO; 
		private String PNAME; //포켓몬 이름
		private String PINITIAL; // 첫글자(ㄱ~ㅎ)
		private String PPICTURE;   //포켓몬 이미지 주소
		

		public int getPNO() {
			return PNO;
		}
		public void setPNO(int pNO) {
			PNO = pNO;
		}
		public String getPNAME() {
			return PNAME;
		}
		public void setPNAME(String pNAME) {
			PNAME = pNAME;
		}
		public String getPINITIAL() {
			return PINITIAL;
		}
		public void setPINITIAL(String pINITIAL) {
			PINITIAL = pINITIAL;
		}
		public String getPPICTURE() {
			return PPICTURE;
		}
		public void setPPICTURE(String pPICTURE) {
			PPICTURE = pPICTURE;
		}

}
