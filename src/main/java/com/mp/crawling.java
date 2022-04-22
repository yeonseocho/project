package com.mp;

import java.io.IOException;

import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class crawling {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Document doc = null;
		Elements elem = new Elements();
		String URL = "https://www.naver.com/";

		try {
			Connection connection = Jsoup.connect(URL)
					.userAgent("Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/41.0.2228.0 Safari/537.36")
					.header("Accept", "text/html")
	                .header("Accept-Encoding", "gzip,deflate")
	                .header("Accept-Language", "it-IT,en;q=0.8,en-US;q=0.6,de;q=0.4,it;q=0.2,es;q=0.2")
	                .header("Connection", "keep-alive")
	                .ignoreContentType(true)
	                .timeout(30000);
			doc = connection.get();
   
			elem = doc.select(".special_img_fold");

			System.out.println(elem.attr("src"));

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}