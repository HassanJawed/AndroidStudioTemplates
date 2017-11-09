<?xml version="1.0"?>
<recipe>

    <instantiate from="src/app_package/classes/Conditions.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/utils/Conditions.java" />

	<instantiate from="src/app_package/classes/DoAction.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/utils/DoAction.java" />

  <instantiate from="src/app_package/classes/LoaderContract.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/api/LoaderContract.java" />

  <instantiate from="src/app_package/classes/ResponseObserver.java.ftl"
      to="${escapeXmlAttribute(srcOut)}/api/ResponseObserver.java" />

</recipe>
