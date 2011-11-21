---
layout: post
title: "How to map a network drive"
date: 2008-06-30 7:37
comments: true
categories: 
---

<pre>
net use x: \\{server}\d$  /USER:{server}\{username} {password}
</pre>

<p>Basically says you want to map d: drive on {server} to your x: drive as the {username}, which is a login locally on {server}</p>
