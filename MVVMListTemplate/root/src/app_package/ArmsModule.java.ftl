package ${moudlePackageName};

import android.support.v4.app.FragmentActivity;
import android.arch.lifecycle.ViewModel;

import com.rui.common.adapter.BaseRvAdapter;
import com.rui.mvvm.dagger.modules.BaseActivityModule;
import com.rui.mvvm.dagger.modules.LLModule;
import com.rui.mvvm.dagger.modules.ObservableModule;
import com.rui.mvvm.dagger.scopes.ActivityScope;
import com.rui.mvvm.dagger.scopes.ViewModelScope;
<#if needActivity && needFragment>
import android.support.v4.app.Fragment;
import com.rui.mvvm.dagger.scopes.FragmentScope;
</#if>
import com.${(moudlePackageName?split("."))[1]}.${(moudlePackageName?split("."))[2]}.R;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;

<#import "root://activities/MVVMListTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module(includes = {BaseActivityModule.class, LLModule.class, ObservableModule.class})
public abstract class ${pageName}Module {

// 示例代码，根据需求修改
//    @Provides
//    static ObservableList<Fragment> providesObservableList() {
//        return new ObservableArrayList<Fragment>();
//    }

<#if needActivity && needFragment>
    @FragmentScope
    @ContributesAndroidInjector(modules = ${pageName}FgModule.class)
    abstract ${pageName}Fragment fragmentInjector();
<#elseif needActivity>
    @Provides
    static BaseRvAdapter<${pageName}Model> providesAdapter() {
        return new BaseRvAdapter<>(R.layout.${itemLayoutName});
    }
</#if>

    @Binds
    @ActivityScope
    abstract FragmentActivity activity(${pageName}Activity activity);

    @Binds
    @IntoMap
    @ViewModelScope(${pageName}ViewModel.class)
    abstract ViewModel bindViewModel(${pageName}ViewModel viewModel);
}