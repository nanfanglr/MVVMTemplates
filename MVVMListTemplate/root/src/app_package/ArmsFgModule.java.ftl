package ${moudlePackageName};

import android.support.v4.app.Fragment;
import android.arch.lifecycle.ViewModel;

import com.rui.common.adapter.BaseRvAdapter;
import com.rui.mvvm.dagger.modules.BaseFragmentModule;
import com.rui.mvvm.dagger.scopes.FragmentScope;
import com.rui.mvvm.dagger.scopes.ViewModelScope;
import com.rui.mvvm.dagger.modules.LLModule;
import com.rui.mvvm.dagger.modules.ObservableModule;
import com.${(moudlePackageName?split("."))[1]}.${(moudlePackageName?split("."))[2]}.R;

import javax.inject.Named;

import dagger.Binds;
import dagger.Module;
import dagger.Provides;
import dagger.multibindings.IntoMap;

<#import "root://activities/MVVMListTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
@Module(includes = {BaseFragmentModule.class, LLModule.class, ObservableModule.class})
public abstract class ${pageName}FgModule {

// 示例代码，根据需求修改
//  @Provides
//  static ObservableList<Fragment> providesObservableList() {
//      return new ObservableArrayList<Fragment>();
//  }

    @Provides
    static BaseRvAdapter<${pageName}Model> providesProAdapter() {
        return new BaseRvAdapter(R.layout.${itemLayoutName});
    }

    @Binds
    @Named(BaseFragmentModule.FRAGMENT)
    @FragmentScope
    abstract Fragment fragment(${pageName}Fragment fragment);

    @Binds
    @IntoMap
    @ViewModelScope(${pageName}FgViewModel.class)
    abstract ViewModel bindFgViewModel(${pageName}FgViewModel viewModel);

}