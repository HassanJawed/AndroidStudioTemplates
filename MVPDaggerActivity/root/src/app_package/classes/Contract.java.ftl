package ${featurePackage};

import com.maddev.mvp.BasePresenter;
import com.maddev.mvp.BaseView;

public interface ${contractClass} {
    interface View extends BaseView<Presenter> {

    }

    interface Presenter extends BasePresenter<View> {
    }

}
