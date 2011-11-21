---
layout: post
title: "Refactor inline condition assignment in while loops"
date: 2007-06-24 4:47
comments: true
categories: 
---

<p>I wish IDE's would offer refactoring to convert something like: <pre><code>int len;<br/>while ((len = read()) &gt; 0) {<br/>    // business operation<br/>}</code></pre>into<pre><code>int len = read(); <br/>while (len &gt; 0) {<br/>    // business operation<br/>    len = read(); <br/>}</code></pre>Nowadays I don't think the inline modification bothers me as much as before but I  still like to have the option of easily refactor it with a click of the button (or keyboard).</p>
