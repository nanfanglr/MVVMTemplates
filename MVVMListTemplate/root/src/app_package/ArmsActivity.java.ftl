package ${ativityPackageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;

import com.rui.common.adapter.BaseRvAdapter;
import com.rui.common.base.BasePageVMActivity;
import com.rui.mvvm.obcallback.RvOnListChangedCallback;
import com.scwang.smartrefresh.layout.SmartRefreshLayout;
import com.${(ativityPackageName?split("."))[1]}.${(ativityPackageName?split("."))[2]}.R;
import com.${(ativityPackageName?split("."))[1]}.${(ativityPackageName?split("."))[2]}.databinding.Activity${pageName}Binding;

<#import "root://activities/MVVMListTemplate/globals.xml.ftl" as gb>

<@gb.fileHeader />
public class ${pageName}Activity extends BasePageVMActivity<
        Activity${pageName}Binding
        ,${pageName}ViewModel
        , BaseRvAdapter<${pageName}Model>
        , LinearLayoutManager
        , RvOnListChangedCallback
        >{

//   //TODO:  请把这段dagger2的注入代码复制到ActivityBindingModule中
//    @ActivityScope
//    @ContributesAndroidInjector(modules = ${pageName}Module.class)
//    abstract ${pageName}Activity get${pageName}ActivityInjector();

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
    protected int getLayoutID(Bundle savedInstanceState) {
        return R.layout.${activityLayoutName};
    }

    @Override
    protected Class<${pageName}ViewModel> getVMClass() {
        return ${pageName}ViewModel.class;
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
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

    }

    /**
     * 获取intent传过来的数据模，模板生成代码，请根据需求去修改
     */
    private void getIntentData() {
        Intent intent = getIntent();
        long csId = intent.getLongExtra("csId", -1);

        double prodValue = intent.getDoubleExtra("prodValue", 0);

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

    /**
     * startActivityForResult的回调，模板生成代码，请根据需求去修改
     *
     * @param data
     */
    private void setActivityResult(String data) {
        Intent intent = new Intent();
        intent.putExtra("data", data);
        setResult(RESULT_OK, intent);
        finish();
    }
}
