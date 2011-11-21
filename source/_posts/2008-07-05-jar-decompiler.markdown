---
layout: post
title: "Jar decompiler"
date: 2008-07-05 2:11
comments: true
categories: 
---

<p>A while ago I posted some shell scripts to decompile java classes.</p>

<p>I decided to re-implement it in <a href="http://github.com/shenie/jar_decompiler/tree/master">ruby</a> so I can use it between my work (Windows) and home (OS X) machines.</p>

<p>This version does not require you to extract the class files first. You simply pass the jar file to the script and it'll decompress and decompile it into a directory with the same name as the jar file without .jar.</p>
