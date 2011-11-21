---
layout: post
title: "How to decompile everything"
date: 2008-06-13 7:30
comments: true
categories: 
---

<p>Quick script to decompile all the class files.</p>

<pre>
find . -name "*.class" -not -name "*\$*" | while read class
do
  dir=`dirname $class`
  file=`basename $class .class`
  pushd $dir &gt;/dev/null
  jad -p ${file}.class &gt; ${file}.java
  popd &gt;/dev/null
done
</pre>
