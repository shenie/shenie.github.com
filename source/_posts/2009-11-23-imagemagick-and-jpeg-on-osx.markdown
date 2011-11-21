---
layout: post
title: "ImageMagick and JPEG on OSX"
date: 2009-11-23 19:52
comments: true
categories: 
---

<p>I am not a fan of port or fink so I always install ImageMagick from source.</p>

<div>Recently I came across a problem where ImageMagick fails to identify JPEG's.</div>

<div>The error looks something like this</div>

<div>identify: no decode delegate for this image format</div>



<div>After some digging around it appears I need to install libjpeg and reinstall ImageMagick for JPEG support.</div>

<div>So I downloaded <a href="http://www.imagemagick.org/download/delegates/jpegsrc.v7.tar.gz">jpegsrc.v7.tar.gz</a> and just run thru the standard configure, make &amp; make install then reinstalled ImageMagick.</div>

<div>After the installation you should be able to see JPEG as one of the supported format via the command &#8221;identify -list format&#8221;.</div>

<div>It should contain something like this.</div>

<div>     JPEG* JPEG      rw-   Joint Photographic Experts Group JFIF format (70)<p></p></div>
