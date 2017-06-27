package com.mashen.admin.domain;

import java.sql.Timestamp;

//             java.sql.Timestamp

public class Advertisement {

		private Integer id;
		private String advertisings;
		private String adLinks;
		private Timestamp creationtime;
		
		@Override
		public String toString() {
			return "advertisementlist [id=" + id + ", advertisings=" + advertisings + ", adLinks=" + adLinks
					+ ", creationtime=" + creationtime + "]";
		}

		public Integer getId() {
			return id;
		}

		public void setId(Integer id) {
			this.id = id;
		}

		public String getAdvertisings() {
			return advertisings;
		}

		public void setAdvertisings(String advertisings) {
			this.advertisings = advertisings;
		}

		public String getAdLinks() {
			return adLinks;
		}

		public void setAdLinks(String adLinks) {
			this.adLinks = adLinks;
		}

		public Timestamp getCreationtime() {
			return creationtime;
		}

		public void setCreationtime(Timestamp creationtime) {
			this.creationtime = creationtime;
		}
	
}
