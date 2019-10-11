package ${presenterPackageName};

import android.support.annotation.NonNull;

import com.rui.mvvm.BaseApplication.BaseApplication;
import com.rui.mvvm.viewmodel.BaseViewModel;

import javax.inject.Inject;

public class ${pageName}ViewModel extends BaseViewModel {

//    示例代码，注入数据源
//    @Inject
//    XxxRepository repository;

    /**
     * @param application ，getApplication()方法可以得到application
     */
    @Inject
    public ${pageName}ViewModel(@NonNull BaseApplication application) {
        super(application);
    }

//    示例代码，登录方法
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
