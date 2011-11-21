---
layout: post
title: "One liner to go to gem directory"
date: 2008-01-29 7:35
comments: true
categories: 
---

<p>dirname <code>gem which action_view | tail -1</code></p>

<p>Or</p>

<pre><code>gem which action_view | tail -1 | sed -e's/^\(.*\/\).*$/\1/'
</code></pre>

<p>which allow you to either pushd or mate the directory, i.e.</p>

<pre><code>pushd `gem which action_view | tail -1 | sed -e's/^\(.*\/\).*$/\1/'`
</code></pre>
