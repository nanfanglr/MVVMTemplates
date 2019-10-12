package ${fragmentPackageName};

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.View;
import com.${(moudlePackageName?split("."))[1]}.${(moudlePackageName?split("."))[2]}.R;
import com.${(ativityPackageName?split("."))[1]}.${(ativityPackageName?split("."))[2]}.databinding.Fragment${pageName}Binding;

import com.rui.mvvm.fragment.BaseLazyVMFragment;

<#import "root://activities/MVVMSimpleTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Fragment extends BaseLazyVMFragment<Fragment${pageName}Binding,${pageName}FgViewModel>{

    public static ${pageName}Fragment newInstance(Context context, int dataType, String title) {
        Bundle bundle = new Bundle();
        bundle.putInt("status", dataType);
        bundle.putString("title", title);
        return (${pageName}Fragment) Fragment.instantiate(context, ${pageName}Fragment.class.getName(), bundle);
    }

    @Override
    protected int getLayoutID(Bundle savedInstanceState) {
        return R.layout.${fragmentLayoutName};
    }

    @Override
    protected Class<${pageName}FgViewModel> getVMClass() {
        return ${pageName}FgViewModel.class;
    }

    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);


    }

    @Override
    protected void lazyFetchData() {

    }


}
