#!/usr/bin/env zsh

CP="$JAVA_HOME/lib/tools.jar:\
$XEP_HOME/lib/xep.jar:\
$XEP_HOME/lib/saxon6.5.5/saxon.jar:\
$XEP_HOME/lib/saxon6.5.5/saxon-xml-apis.jar:\
$XEP_HOME/lib/xt.jar"

"$JAVA_HOME/bin/java" \
	-classpath "$CP" \
	"-Dcom.renderx.xep.CONFIG=$XEP_HOME/xep.xml" \
	com.renderx.xep.XSLDriver \
	-xml winelist.xml \
	-xsl winelist.xsl \
	-pdf winelist.pdf

