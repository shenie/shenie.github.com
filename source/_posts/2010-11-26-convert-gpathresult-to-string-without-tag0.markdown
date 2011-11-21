---
layout: post
title: "Convert GPathResult to String without tag0"
date: 2010-11-26 0:27
comments: true
categories: 
---

In Groovy, you can use the follow code to convert node to XML String. 

{% codeblock %}
groovy.xml.XmlUtil.serialize(GPathResult node)
{% endcodeblock %}

But sometimes the XML you end up with contains tag0 namespace all over <br/>the elements. It happens because the doc contains default namespace <br/>with empty prefix, so groovy uses a default prefix which is "tag0". <br/>The XML is still correct but it would be nice to not have to see that <br/>crap. To do so you need to create a new closure with the node and <br/>explicitly declare an empty string namespace. Then use <br/>StreamingMarkupBuilder to convert the newly created closure to String. <br/>The following code is how you would implement that logic. 

<script src="http://gist.github.com/716310.js"></script>
