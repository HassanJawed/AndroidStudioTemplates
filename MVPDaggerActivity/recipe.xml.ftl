<?xml version="1.0"?>
<recipe>
	<#include "../common/recipe_manifest.xml.ftl" />
    <#include "activity_layout_recipe.xml.ftl" />
    <#include "content_layout_recipe.xml.ftl" />

    <instantiate from="src/app_package/classes/Activity.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${relativeFeaturePackage}/${activityClass}.java" />

    <instantiate from="src/app_package/classes/Contract.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${relativeFeaturePackage}/${contractClass}.java" />

    <instantiate from="src/app_package/classes/Presenter.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${relativeFeaturePackage}/${presenterClass}.java" />
</recipe>
