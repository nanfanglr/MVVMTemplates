<#macro addAllKaptDependencies>
  <#if !isNewProject && ((language!'Java')?string == 'Kotlin')>
    <apply plugin="kotlin-kapt" />
    <merge from="root://activities/MVVMListTemplate/dagger2.gradle.ftl"
        to="${escapeXmlAttribute(projectOut)}/build.gradle" />
  </#if>
</#macro>
