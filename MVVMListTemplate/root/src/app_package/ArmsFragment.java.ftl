package ${fragmentPackageName};

import android.content.Context;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.View;
import com.${(moudlePackageName?split("."))[1]}.${(moudlePackageName?split("."))[2]}.R;
import com.${(ativityPackageName?split("."))[1]}.${(ativityPackageName?split("."))[2]}.databinding.Fragment${pageName}Binding;

import com.rui.mvvm.fragment.BaseLazyVMFragment;

<#import "root://activities/MVVMListTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Fragment extends BasePageVMFragment<
        Fragment${pageName}Binding
        ,${pageName}FgViewModel
        , BaseRvAdapter<${pageName}Model>
        , LinearLayoutManager
        , RvOnListChangedCallback
        >{

    /**
     * 工厂方法，模板生成代码，请根据需求去修改
     *
     * @param context
     * @param dataType
     * @param title
     */
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
    protected SmartRefreshLayout getRefreshLayout() {
        return binding.refresh;
    }

    @Override
    protected RecyclerView getRV() {
        return binding.rvData;
    }


    @Override
    public void onViewCreated(View view, @Nullable Bundle savedInstanceState) {
        super.onViewCreated(view, savedInstanceState);


    }

    /**
     * 获取Arguments传过来的数据模，模板生成代码，请根据需求去修改
     */
    private void getArgumentsData() {
         int status = getArguments().getInt("status", -1);
    }


    @Override
    protected void lazyFetchData() {

    }

    /**
     * 列表item的点击事件处理，模板生成代码，请根据需求去修改
     */
    private void initEvent() {
        adapter.setOnItemClickListener((adapter, view, position) -> {
            //处理item点击逻辑


        });
        adapter.setOnItemChildClickListener((adapter, view, position) -> {
            //处理item里面子view的点击逻辑


        });
    }

}
