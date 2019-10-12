package ${moudlePackageName};

import android.support.v4.app.FragmentActivity;
import android.arch.lifecycle.ViewModel;

import com.rui.mvvm.dagger.modules.BaseActivityModule;
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

<#import "root://activities/MVVMSimpleTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module(includes = {BaseActivityModule.class, ObservableModule.class})
public abstract class ${pageName}Module {

//  示例代码，根据需求修改
//  @Provides
//  static ObservableList<Fragment> providesObservableList() {
//        return new ObservableArrayList<Fragment>();
//  }

<#if needActivity && needFragment>
    @FragmentScope
    @ContributesAndroidInjector(modules = ${pageName}FgModule.class)
    abstract ${pageName}Fragment fragmentInjector();
</#if>

    @Binds
    @ActivityScope
    abstract FragmentActivity activity(${pageName}Activity activity);

    @Binds
    @IntoMap
    @ViewModelScope(${pageName}ViewModel.class)
    abstract ViewModel bindViewModel(${pageName}ViewModel viewModel);

}