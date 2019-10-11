package ${presenterPackageName};

import android.support.annotation.NonNull;

import com.rui.mvvm.BaseApplication.BaseApplication;
import com.rui.mvvm.viewmodel.BaseViewModel;

import javax.inject.Inject;

public class ${pageName}FgViewModel extends BasePageViewModel<${pageName}Model> {

//    示例代码，注入数据源
//    @Inject
//    LoginRepository repository;

    /**
     * @param application ，getApplication()方法可以得到application
     */
    @Inject
    public ${pageName}FgViewModel(@NonNull BaseApplication application) {
        super(application);
    }

    @Override
    public Single<ResultModel<${pageName}Model>> getDataOB() {
        return Single.error(new Throwable("接口未完成"));
//        return repository.getXXXXOB();
    }

//    示例代码，注入数据源
//    public void login() {
//        addSubscribe(repository.loginOB(phone.get(), psw.get())
//                .compose(singleTransformer())
//                .subscribe(resultModel -> {
//                    if (resultModel.isSuccess()) {
//                     //处理登录成功逻辑
//
//                    } else {
//                        dataLoadingError.setValue(resultModel.getMsg());
//                    }
//                }, new ExceptionConsumer(getApplication()))
//        );
//    }

}
