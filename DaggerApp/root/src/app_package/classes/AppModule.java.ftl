package ${packageName}.${daggerPackageName};

import android.app.Application;
import ${packageName}.${applicationName};
import javax.inject.Singleton;
import dagger.Binds;
import dagger.Module;
import dagger.Provides;

/**
 * ${applicationModuleName} class used to add dependency in dagger graph which are dependent on 
 * application context
 */
@Module
@Singleton
public abstract class ${applicationModuleName} {

	@Binds
    abstract Application application(${applicationName} application);
}
