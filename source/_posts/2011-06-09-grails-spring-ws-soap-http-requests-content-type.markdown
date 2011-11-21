---
layout: post
title: "Grails, spring-ws, SOAP & HTTP request's content type"
date: 2011-06-09 23:39
comments: true
categories: 
---

If you ever have to use Grails to process a fucked up SOAP request with a content type of application/x-www-form-urlencoded then this post is for you.

_p.s. eventually we will stop processing that kind of requests but for now we need it to work so client has time to fix their shit up_

Problem with application/x-www-form-urlencoded requests & spring-ws' message factory is that it does not like requests with that content type. Rightly so!

The message factory content type issue is obvious since the exception that it throws at you is pretty self-explanatory. The work-around is pretty easy, define your own messageFactory spring bean that is more lenient on the content type.

But after the content type is sorted you would face the second problem "Premature end of file". It took me a while to figure out what is happening. In retrospect it is actually quite logical. The end of file is referring to the request's input stream which has been consumed by Grails filters before it gets to the message factory. The following filters are responsible for parsing the request and routing, luckily they are also subclasses of OncePerRequestFilter which means you can easily bypass them to avoid input stream been consumed.

1. grailsWebRequest
2. urlMapping
3. hiddenHttpMethod
