package ${apiPackage};

import java.lang.ref.WeakReference;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import ${utilsPackage}.Conditions;


public abstract class ResponseObserver<T> implements Observer<T> {

    private final WeakReference<LoaderContract> viewReference;
    private Disposable disposable;

    public ResponseObserver(LoaderContract loaderContract) {
        this.viewReference = new WeakReference<>(loaderContract);
    }

    @Override
    public void onSubscribe(Disposable disposable) {
        this.disposable = disposable;
        Conditions.notNull(viewReference, viewReference -> viewReference.get().showProgress());
    }

    @Override
    public void onError(Throwable e) {
        Conditions.notNull(viewReference, viewReference -> viewReference.get().hideProgress());
        Conditions.notNull(viewReference, viewReference -> viewReference.get().showFailure(
                e.getMessage()));
    }

    @Override
    public void onNext(T t) {
        Conditions.notNull(viewReference, viewReference -> viewReference.get().hideProgress());
        onSuccess(t);
    }

    public abstract void onSuccess(T t);

    @Override
    public void onComplete() {
        disposable.dispose();
    }

    public void cancel() {
        disposable.dispose();
    }
}
