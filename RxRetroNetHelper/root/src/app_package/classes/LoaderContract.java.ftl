package ${apiPackage};

public interface LoaderContract {

    void showProgress();

    void hideProgress();

    void showFailure(String error);
}
