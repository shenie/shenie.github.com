---
layout: post
title: "One liner that finds all directories that has a .svn subfolder"
date: 2008-03-26 16:43
comments: true
categories: 
---

<p>Here's a little 1 liner that let you find all the svn directories in the current folder.</p>

<pre>find . -mindepth 2 -maxdepth 2 -name .svn -type d | sed -e's/\.svn//' </pre>
