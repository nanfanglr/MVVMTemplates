package ${ativityPackageName};

import android.os.Bundle;

import com.rui.mvvm.activity.BaseVMActivity;

<#import "root://activities/MVVMListTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends BaseTranActivity<Activity${pageName}Binding,${pageName}ViewModel>{

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
