<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/classes/Application.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/${applicationName}.java" />

      <!-- Dagger -->
	<instantiate from="src/app_package/classes/AndroidBindingModule.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/dagger/AndroidBindingModule.java" />

    <instantiate from="src/app_package/classes/ApplicationComponent.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/dagger/${applicationComponentName}.java" />

    <instantiate from="src/app_package/classes/AppModule.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/dagger/${applicationModuleName}.java" />
</recipe>
