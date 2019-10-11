<?xml version="1.0"?>
<#import "root://activities/common/kotlin_macros.ftl" as kt>
<#import "root://activities/MVPArmsTemplate/dagger2_macros.ftl" as dagger2>
<recipe>
 <#include "../common/recipe_manifest.xml.ftl" />
<@kt.addAllKotlinDependencies />
<@dagger2.addAllKaptDependencies />

<#if needActivity && generateActivityLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${activityLayoutName}.xml" />
</#if>

<#if needFragment && !needActivity &&  generateFragmentLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${fragmentLayoutName}.xml" />
</#if>

<#if needActivity >
    <instantiate from="root/src/app_package/ArmsActivity.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(ativityPackageName)}/${pageName}Activity.${ktOrJavaExt}" />
</#if>

<#if needFragment && !needActivity>
    <instantiate from="root/src/app_package/ArmsFragment.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(fragmentPackageName)}/${pageName}Fragment.${ktOrJavaExt}" />
</#if>

<#if needPresenter && needActivity>
    <instantiate from="root/src/app_package/ArmsViewModel.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}ViewModel.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}ViewModel.${ktOrJavaExt}" />
</#if>

<#if needPresenter && !needActivity && needFragment >
    <instantiate from="root/src/app_package/ArmsFgViewModel.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}FgViewModel.${ktOrJavaExt}" />
    <open file="${projectOut}/src/main/java/${slashedPackageName(presenterPackageName)}/${pageName}ViewModel.${ktOrJavaExt}" />
</#if>

<#if needModel>
    <instantiate from="root/src/app_package/ArmsRepository.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(modelPackageName)}/${pageName}Repository.${ktOrJavaExt}" />
</#if>

<#if needDagger && needActivity>
    <instantiate from="root/src/app_package/ArmsModule.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(moudlePackageName)}/${pageName}Module.${ktOrJavaExt}" />
</#if>

<#if needDagger && !needActivity && needFragment >
    <instantiate from="root/src/app_package/ArmsFgModule.${ktOrJavaExt}.ftl"
                   to="${projectOut}/src/main/java/${slashedPackageName(moudlePackageName)}/${pageName}FgModule.${ktOrJavaExt}" />
</#if>

</recipe>
