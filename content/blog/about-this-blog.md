---
title: "About this blog"
date: 2024-05-09T16:00:00+02:00
description: Just a little test for my Hugo setup.
draft: false
images:
  - src: /img/blog/willow.webp
    caption: "just picture of a Willow tree I took at a local café"
---

Hi, this post is really just a test for whether or not my [Hugo](https://gohugo.io) blog setup is working as expected. So if you're reading this and you're not me, congratulations! You've found my website (in a working state)! 🎉

I'm usually more a lurker than a poster, as can be seen by the activity of my [Bluesky feed](https://bsky.app/profile/bemoty.dev), so the chances of me never posting something here are nonzero. But just in case something interesting happens in my life and I feel like sharing it, this is the place where it will happen.

```kotlin {lineNos=inline} 
fun toCamelCase(str: String): String {
    return str.split("-", "_").mapIndexed { index, s ->
        if (index == 0) s else s.replaceFirstChar { it.uppercase() }
    }.joinToString("")
}
```

Anyway, thanks for stopping by and I hope you have a great day. <3