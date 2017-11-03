package ${packageName};

import android.os.Bundle;
import android.support.annotation.NonNull;
import android.support.v7.app.AppCompatActivity;
import ${applicationPackage}.R;
import dagger.android.AndroidInjection;
import dagger.Binds;
import dagger.Module;
import javax.inject.Inject;

import com.maddev.mvp.BaseMvpActivity;
import com.maddev.mvp.BasePresenter;

public final class ${activityClass} extends BaseMvpActivity implements ${contractClass}.View
{
    @Inject
    ${presenterClass} presenter;
    
    @Override
    protected int getLayoutId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void inject() {
        AndroidInjection.inject(this);
    }

    @NonNull
    @Override
    protected BasePresenter getPresenter() {
        return presenter;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        <#if supportBackNavigation>
        showBackNavigation();
        </#if>

        presenter.takeView(this);
    }

    @Module
    public abstract class ${activityClass}Module {

        @Binds
        abstract AppCompatActivity bindActivity(${activityClass} activity);
    }
}
