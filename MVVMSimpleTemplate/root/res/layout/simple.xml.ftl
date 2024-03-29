<?xml version="1.0" encoding="utf-8"?>

<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">

    <data>

        <variable
            name="viewModel"
<#if needActivity >
            type="${packageName}.${pageName}ViewModel" />
<#elseif needFragment && !needActivity>
            type="${packageName}.${pageName}FgViewModel" />
</#if>
    </data>

    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
        tools:context="${packageName}.${pageName}Activity">

    </LinearLayout>
</layout>