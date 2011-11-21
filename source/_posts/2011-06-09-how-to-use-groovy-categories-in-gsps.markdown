---
layout: post
title: "How to use Groovy categories in gsp's"
date: 2011-06-09 19:58
comments: true
categories: 
---

You use [Groovy categories](http://docs.codehaus.org/display/GROOVY/Groovy+Categories) in a canonical way in gsp's. i.e. by surrounding all your gsp code inside a call to

{% codeblock %}
<% use(YourCategoryClass) { %>
<% } %>
{% endcodeblock %}

But it gets troublesome quite soon, especially if the main gsp renders other partial templates.

Luckily there is a way to hook into the view rendering workflow. The trick is to provide your own implementation of View that invoke the call to use categories around the view.render method. To do that you also need to override the default jspViewResolver spring bean with your own implementation of ViewResolver which uses your own implementation of View. Lastly if you need dynamically decide what categories classes to use then you can pass it in the model attribute inside your controller.

The result will look something like this.

{% gist 1018017 %}



