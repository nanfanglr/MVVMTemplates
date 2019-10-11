package ${moudlePackageName};

<#if needActivity && needFragment>
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import com.rui.mvvm.dagger.modules.BaseActivityModule;
import com.rui.mvvm.dagger.scopes.ActivityScope;
import com.rui.mvvm.dagger.scopes.FragmentScope;
import com.rui.mvvm.dagger.scopes.ViewModelScope;
import javax.inject.Named;
<#elseif needActivity>
import android.support.v4.app.FragmentActivity;
import com.rui.mvvm.dagger.modules.BaseActivityModule;
import com.rui.mvvm.dagger.scopes.ActivityScope;
import com.rui.mvvm.dagger.scopes.ViewModelScope;
<#elseif needFragment>
import android.support.v4.app.Fragment;
import com.rui.mvvm.dagger.modules.BaseFragmentModule;
import com.rui.mvvm.dagger.scopes.FragmentScope;
import com.rui.mvvm.dagger.scopes.ViewModelScope;
import javax.inject.Named;
</#if>
import android.arch.lifecycle.ViewModel;
import dagger.Binds;
import dagger.Module;

import dagger.multibindings.IntoMap;

<#import "root://activities/MVPArmsTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module(includes = BaseActivityModule.class)
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

    @Binds
    @ActivityScope
    abstract FragmentActivity activity(${pageName}Activity activity);

    @Binds
    @IntoMap
    @ViewModelScope(${pageName}ViewModel.class)
    abstract ViewModel bindViewModel(${pageName}ViewModel viewModel);
<#elseif needActivity>

    @Binds
    @ActivityScope
    abstract FragmentActivity activity(${pageName}Activity activity);

    @Binds
    @IntoMap
    @ViewModelScope(${pageName}ViewModel.class)
    abstract ViewModel bindViewModel(${pageName}ViewModel viewModel);
</#if>

}