import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;


public class ReadWebsiteData {

    public static void main(String[] args) throws IOException {

        String city="Bangalore";
	if( args.length > 0 ) {
	    city=args[0];
	} else {
	    System.out.println("Please enter city name...");
	    System.exit(0);
	}
	
	URL url = new URL("https://in.bookmyshow.com/"+city+"/movies");
        URLConnection con = url.openConnection();
        InputStream is =con.getInputStream();
	BufferedReader br = new BufferedReader(new InputStreamReader(is));

        String line = null;

        // read each line and write to System.out
        while ((line = br.readLine()) != null) {
            System.out.println(line);
        }
    }
}
