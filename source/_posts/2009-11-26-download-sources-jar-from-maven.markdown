---
layout: post
title: "Download sources jar from maven"
date: 2009-11-26 1:05
comments: true
categories: 
---

<p>We use Maven, when Maven downloads dependencies it doesn't download sources, which I rely on when learn and debug programs.... <br/>I was expecting, for what seem a simple thing to me, a flag that I can add in maven's settings files or an option to pass to mvn command.... but I couldn't find the solution (or anything close to it). Don't get me wrong, there are solutions out there, but I just feel it is too much hassle for the task.  So I wrote a little script that go thru my repo and downloads any jar that doesn't have its respective sources :p <br/><script src="http://gist.github.com/243263.js"></script></p>
