<?xml version="1.0" encoding="utf-8"?>

<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">

    <data>

        <import type="android.view.View" />

        <variable
            name="viewModel"
<#if needActivity >
            type="${packageName}.${pageName}ViewModel" />
<#elseif needFragment && !needActivity>
            type="${packageName}.${pageName}FgViewModel" />
</#if>
        <variable
            name="adapter"
            type="com.rui.common.adapter.BaseRvAdapter" />

        <variable
            name="layoutManager"
            type="android.support.v7.widget.RecyclerView.LayoutManager" />
    </data>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
        tools:context="${packageName}.${pageName}Activity">

        <com.scwang.smartrefresh.layout.SmartRefreshLayout
            android:id="@+id/refresh"
            android:layout_width="match_parent"
            android:layout_height="0dp"
            android:layout_weight="1"
            app:finishLoadmore="@{viewModel.finishLoadmore}"
            app:finishRefreshing="@{viewModel.finishRefreshing}"
            app:loadNoMoreData="@{viewModel.loadNoMoreData}">

            <android.support.v7.widget.RecyclerView
                android:id="@+id/rv_data"
                android:layout_width="match_parent"
                android:layout_height="match_parent"
                android:overScrollMode="never"
                app:rvAdapter="@{adapter}"
                app:rvItems="@{viewModel.items}"
                app:rvLayoutManager="@{layoutManager}" />
        </com.scwang.smartrefresh.layout.SmartRefreshLayout>

    </LinearLayout>
</layout>