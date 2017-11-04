package ${packageName}.${daggerPackageName};

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import dagger.Module;
import dagger.Provides;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.Retrofit;
import retrofit2.converter.gson.GsonConverterFactory;
import java.util.concurrent.TimeUnit;
import javax.inject.Inject;
import javax.inject.Singleton;

import ${packageName}.${apiName};

@Module
@Singleton
public class NetModule {

	@Inject
	public NetModule () {
	}

@Provides
	@Singleton
	public OkHttpClient provideHttpClient () {
		HttpLoggingInterceptor interceptor = new HttpLoggingInterceptor();
		interceptor.setLevel( HttpLoggingInterceptor.Level.BODY );
		return new OkHttpClient.Builder()
				.connectTimeout( 5, TimeUnit.MINUTES )
				.writeTimeout( 5, TimeUnit.MINUTES )
				.readTimeout( 1, TimeUnit.MINUTES )
				.addInterceptor( interceptor )
				.build();
	}

	@Provides
	@Singleton
	public ${apiName} provideServices (OkHttpClient client) {
		Gson gson = new GsonBuilder().serializeNulls().create();
		Retrofit retrofit = new Retrofit.Builder()
				.client( client )
				.baseUrl( "Put_your_service_url_here" )
				.addConverterFactory( GsonConverterFactory.create( gson ) )
				.build();
		return retrofit.create( ${apiName}.class );
	}
}