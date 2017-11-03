<?xml version="1.0"?>
<globals>
    <global id="featurePackage" type="string" value="${packageName}.${camelCaseToUnderscore(featureName)}"/>
	<global id="relativeFeaturePackage" type="string" value="${camelCaseToUnderscore(featureName)}"/>

	<!-- Activity Globals from recipe_manifest.xml.ftl -->
    <global id="hasNoActionBar" type="boolean" value="false" />
    <global id="parentActivityClass" value="" />
    <global id="simpleLayoutName" value="${layoutName}" />
    <global id="excludeMenu" type="boolean" value="true" />
    <global id="generateActivityTitle" type="boolean" value="false" />

</globals>
