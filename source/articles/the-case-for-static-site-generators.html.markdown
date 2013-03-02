---
title: The Case for Static Site Generators
author:
description: There's something beautiful about stripping the cruft out publishing content on the web.
date: 2013-02-26 00:46 -08:00
tags: static site generators, ruby, haml, sass, wordpress, rails, sinatra, middleman
published: true
---

Creating a website has never been so easy, and it's never been so hard. For the purposes of this post, assume that I'm considering a few different options for creating a site like the one you're looking at right now&mdash;a simple content-focused site with pages and articles.  

## WordPress

[WordPress](http://wordpress.org/) is ubiquitous. As a publishing platform for non-technical users, WordPress is as solid as any solution out there. Over the last 10 years, it's grown from a simple blogging tool into a fully fledged CMS. I don't need to debate its merits. 

That said, maintaining a self-hosted WordPress installation takes vigilance. Security vulnerabilities can creep in if you don't stay on top of updates. Plugins further compound the problem. I'm not saying you can't put out a solid site on WordPress, just that there's more to worry about than you might think (particularly if you're just getting started, or busy worrying about other things).

## Rails and Sinatra

[Rails](http://rubyonrails.org/) is a solid web application framework, and a great JSON server for single-page JavaScript applications. However, it's a little heavy for the purposes of our simple site. But what about all the great ruby gems and helpers Rails throws our way that would still be nice to have?

  - [Haml](http://haml.info/)
  - [Sass](http://sass-lang.com/)
  - [Asset pipeline](http://guides.rubyonrails.org/asset_pipeline.html)
  - [Application helpers](http://www.padrinorb.com/guides/application-helpers) (including partials)  

I suppose I could use [Sinatra](http://www.sinatrarb.com/), but then I still have to run an application server. There's more configuration and deployment (for the record, I know my gripes about keeping WordPress secure apply to any web application, including Rails and Sinatra apps). Moreover, it needs to be able to handle Hacker News or Reddit traffic, because, even though I don't want to spend a lot of time making the site, the content is going to be gold (right?). I need to be prepared. What's the solution?

## Enter Static Site Generators

There are quite a few out there, however, I'm partial to [Middleman](http://middlemanapp.com/), which is what I used to build this site. To be fair, here's a few others:
  
  - [Jekyll](https://github.com/mojombo/jekyll)
  - [Octopress](https://github.com/imathis/octopress)
  - [Cactus](https://github.com/koenbok/Cactus)
  - and a ton [more](http://news.ycombinator.com/item?id=4857473)....

Middleman is a command-line tool for building static sites that borrows some helpers from [Padrino](http://www.padrinorb.com/), and gives us access to all those kick-ass shortcuts we thought we'd left behind in Rails or Sinatra.

While they don't work for everything, it's refreshing to know that I don't have to worry as much about whether my server is going to conk out if the site gets slammed (or think twice about the bill). It's all static content once you build the project from the command-line. With directory indexes (on an Apache server), you can make your routes pretty too.

When I began getting into web development, WordPress was a great platform for me to learn on. However, I'm going to make the argument that a beginner today interested in the front-end would be better served by figuring out how to use a static site generator. They'd pick up...

  - Basic command-line skills
  - Ruby and its associated work-flow
  - Dynamic templates
  - Modern front-end development tools
  - Learning to [RTFM](http://en.wikipedia.org/wiki/RTFM)

Fucking priceless.

At the end of the day... I'm not trying to pick on WordPress. Rails and Sinatra rock. But sometimes (when you can), it's nice to simplify things all the way down to the foundation of what makes the web great. Static content.

Discuss this article on [Hacker News](http://news.ycombinator.com/item?id=5291430).
