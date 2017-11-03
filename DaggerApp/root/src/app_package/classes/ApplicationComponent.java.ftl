package ${packageName}.${daggerPackageName};

import javax.inject.Singleton;
import dagger.Component;
import dagger.android.AndroidInjectionModule;
import dagger.android.AndroidInjector;
import dagger.android.support.AndroidSupportInjectionModule;
import ${packageName}.${applicationName};

@Singleton
@Component(
        modules = {
                ${applicationModuleName}.class,
                AndroidBindingModule.class,
                AndroidInjectionModule.class,
                AndroidSupportInjectionModule.class})
public interface ${applicationComponentName} extends AndroidInjector<${applicationName}> {

	@Component.Builder
	@Singleton
	abstract class Builder extends AndroidInjector.Builder<${applicationName}> {

	}
}
