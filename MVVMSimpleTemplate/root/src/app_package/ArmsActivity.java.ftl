package ${ativityPackageName};

import android.os.Bundle;

import com.rui.mvvm.activity.BaseVMActivity;
import com.${(ativityPackageName?split("."))[1]}.${(ativityPackageName?split("."))[2]}.R;
import com.${(ativityPackageName?split("."))[1]}.${(ativityPackageName?split("."))[2]}.databinding.Activity${pageName}Binding;

<#import "root://activities/MVVMSimpleTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends BaseTranActivity<Activity${pageName}Binding,${pageName}ViewModel>{

//   //TODO:  请把这段dagger2的注入代码复制到ActivityBindingModule中
//    @ActivityScope
//    @ContributesAndroidInjector(modules = {pageName}Module.class)
//    abstract {pageName}Activity m{pageName}Injector();

    /**
     * 跳转方法，模板生成代码，请根据需求去修改
     *
     * @param context
     * @param csId
     * @param prodValue
     * @param requestCode
     */
    public static void actionStart(Activity context, long csId, double prodValue, int requestCode) {
        Intent intent = new Intent(context, ${pageName}Activity.class);
        intent.putExtra("csId", csId);
        intent.putExtra("prodValue", prodValue);
//        context.startActivity(intent);
        context.startActivityForResult(intent, requestCode);
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    @Override
    protected int getLayoutID(Bundle savedInstanceState) {
        return R.layout.${activityLayoutName};
    }

    @Override
    protected Class<${pageName}ViewModel> getVMClass() {
        return ${pageName}ViewModel.class;
    }

}
