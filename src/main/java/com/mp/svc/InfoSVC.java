package com.mp.svc;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;

@Service
public class InfoSVC {

    private final static String SECRET_KEY = "69572d11a22a27ad291b039c21495eb9";
    private final static String DAILY_BOX_OFFICEL = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json";
    private final static String TARGET_DATE = "20211212";
   
    
    public StringBuilder searchDailyBoxOfficeList() {
        try {
            URL url = new URL(getUrl(SECRET_KEY, DAILY_BOX_OFFICEL, TARGET_DATE));
            HttpURLConnection con = (HttpURLConnection) url.openConnection();
            con.setRequestMethod("GET");

            int responseCode = con.getResponseCode();

            BufferedReader br;
            StringBuilder re = new StringBuilder();
            if (responseCode == 200) { // 정상 호출
                br = new BufferedReader(new InputStreamReader(con.getInputStream()));
                String line = null;
                while((line=br.readLine())!=null) {
                	re.append(line);
                	
                	
                	
                }
            } else {  // 에러 발생
                br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
            }

            String inputLine = getInputLine(br); // string json

            ObjectMapper mapper = new ObjectMapper();

            return re;
          //  return mapper.readValue(inputLine, ResultDAO.class); // json to DTO
        } catch (Exception e) {
            System.out.println(e.getMessage());
            throw new RuntimeException("오류");
        }
    }

    private String getUrl(String secretKey, String dailyBoxOfficel, String keys) {
        StringBuilder sb = new StringBuilder();
        return sb.append(dailyBoxOfficel).append("?").append("key=").append(secretKey).append("&").append("targetDt=").append(keys).toString();
    }

    private String getInputLine(BufferedReader br) throws IOException {
        String inputLine;
        StringBuilder response = new StringBuilder();
        while ((inputLine = br.readLine()) != null) {
            response.append(inputLine.trim());
        }

        return response.toString().replaceAll("\\s", "");
    }
}