package ${packageName};

import android.app.Activity;
import android.app.Application;
import javax.inject.Inject;
import dagger.android.AndroidInjector;
import dagger.android.DispatchingAndroidInjector;
import dagger.android.HasActivityInjector;
import android.support.v4.app.Fragment;
import dagger.android.support.HasSupportFragmentInjector;
import ${packageName}.${daggerPackageName}.Dagger${applicationComponentName};

public class ${applicationName} extends Application implements HasActivityInjector, HasSupportFragmentInjector {

	@Inject 
	DispatchingAndroidInjector<Activity> dispatchingAndroidInjector;
	
	@Inject
    DispatchingAndroidInjector<Fragment> dispatchingFragmentInjector;


	@Override public void onCreate () {
		super.onCreate();

		AndroidInjector<${applicationName}> applicationInjector = Dagger${applicationComponentName}.builder()
				.create( this );
		applicationInjector.inject( this );
	}

	@Override public AndroidInjector<Activity> activityInjector () {
		return dispatchingAndroidInjector;
	}

	@Override
    public AndroidInjector<Fragment> supportFragmentInjector() {
        return dispatchingFragmentInjector;
    }
}

