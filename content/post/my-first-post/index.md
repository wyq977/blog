---
title: "Test for blog but no emoji in title :("
date: 2020-12-17T22:55:41+01:00
# draft: true
categories:
    - Guide
tags:
    - test
    - Hugo
image: helena-hertz-wWZzXlDpMog-unsplash.jpg
series: "Themes Guide"
aliases: "test-post"
---

Copied from [example site](https://github.com/CaiJimmy/hugo-theme-stack/tree/master/exampleSite)

## Test for a single post

created by `hugo new post/my-first-post.md`

## Test for emoji support :smile:

:smile:

Not supported in the title yet so one has to edit the layout on the theme [stackoverflow](https://stackoverflow.com/questions/61753165/emoji-not-displayed-in-deployed-hugo-website-netlify), too much trouble...

## Math is still not perfect

$$
f(x) = e^x
$$

Multiple-line does not render nicely with KaTex now

```md
$$
\begin{align} 
y &=& 1+1   \\\\\\
&=& 2
\end{align}
$$

$$
% This works as expected in KaTeX
\begin{aligned}
a &= 1 \\
b &= 2
\end{aligned}
$$
```

$$
\begin{align} 
y &=& 1+1   \\\\\\
&=& 2
\end{align}
$$

$$
% This works as expected in KaTeX
\begin{aligned}
a &= 1 \\
b &= 2
\end{aligned}
$$

## 图片

![Photo by Florian Klauer on Unsplash](florian-klauer-nptLmg6jqDo-unsplash.jpg) ![Photo by Luca Bravo on Unsplash](luca-bravo-alS7ewQ41M8-unsplash.jpg) 

![Photo by Helena Hertz on Unsplash](helena-hertz-wWZzXlDpMog-unsplash.jpg)  ![Photo by Hudai Gayiran on Unsplash](hudai-gayiran-3Od_VKcDEAA-unsplash.jpg)

```markdown
![Photo by Florian Klauer on Unsplash](florian-klauer-nptLmg6jqDo-unsplash.jpg)  ![Photo by Luca Bravo on Unsplash](luca-bravo-alS7ewQ41M8-unsplash.jpg) 

![Photo by Helena Hertz on Unsplash](helena-hertz-wWZzXlDpMog-unsplash.jpg)  ![Photo by Hudai Gayiran on Unsplash](hudai-gayiran-3Od_VKcDEAA-unsplash.jpg)
```

Hugo ships with several [Built-in Shortcodes](https://gohugo.io/content-management/shortcodes/#use-hugo-s-built-in-shortcodes) for rich content, along with a [Privacy Config](https://gohugo.io/about/hugo-and-gdpr/) and a set of Simple Shortcodes that enable static and no-JS versions of various social media embeds.
<!--more-->
---

## YouTube Privacy Enhanced Shortcode

{{< youtube ZJthWmvUzzc >}}

<br>

---

## Twitter Simple Shortcode

{{< tweet 877500564405444608 >}}

<br>

---

## Vimeo Simple Shortcode

{{< vimeo_simple 48912912 >}}

<br>

{{< vimeo 48912912 >}}

## Bilibili [#97](https://github.com/CaiJimmy/hugo-theme-stack/pull/97)

{{< bilibili BV1wK4y1Y7P4 >}}
