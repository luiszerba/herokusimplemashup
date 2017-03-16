package br.com.odontoprev.mashup.poc.sales;

import java.io.IOException;
import java.net.URISyntaxException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.HttpHost;
import org.apache.http.NameValuePair;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.utils.URIBuilder;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

/**
 * Servlet implementation class SolicitarSegundaVia
 */
public class SolicitarSegundaVia extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * Default constructor.
	 */
	public SolicitarSegundaVia() {
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String caso = request.getParameter("caso");
		String carterinha = request.getParameter("carterinha");
		String descricao = "Solicitar Segunda Via";
		
		HttpHost proxy = new HttpHost("172.16.1.234",8080);
		
		RequestConfig defaultRequestConfig = RequestConfig.custom()
			    .setSocketTimeout(5000)
			    .setConnectTimeout(5000)
			    .setConnectionRequestTimeout(5000)
			    .build();

		RequestConfig requestConfig = RequestConfig.copy(defaultRequestConfig)
			    .setProxy(new HttpHost("172.16.1.234", 8080))
			    .build();

		CloseableHttpClient httpClient = null;
		httpClient = HttpClients.createDefault();
		
		
		List <NameValuePair> nvps = new ArrayList <NameValuePair>();
		nvps.add(new BasicNameValuePair("grant_type", "password"));
		nvps.add(new BasicNameValuePair("client_id", "3MVG9szVa2RxsqBY.Bb73gTmonzvkScPqSgqdbOk9xS4.vDoeZ.HWFd.nOwrFOM2vatmv4nJTJ46cIbLmyZ6H"));
		nvps.add(new BasicNameValuePair("client_secret", "8525224555685524158"));
		nvps.add(new BasicNameValuePair("username", "vsimao@odontoprev.demo"));
		nvps.add(new BasicNameValuePair("password", "Salesforce1"));
		
		try {
			URIBuilder uriBuilder = new URIBuilder("https://login.salesforce.com/services/oauth2/token").addParameters(nvps);
		

		HttpPost postRequest = new HttpPost(uriBuilder.build());
		postRequest.setConfig(requestConfig);
		postRequest.setHeader("Content-Type", "application/x-www-form-urlencoded");
		CloseableHttpResponse resp = httpClient.execute(postRequest);

        System.out.println(EntityUtils.toString(resp.getEntity()));

		
		} catch (URISyntaxException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
