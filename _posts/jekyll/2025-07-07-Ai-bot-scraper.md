---
title: The Open-Source Software Saving the Internet From AI Bot Scrapers
source: https://www.404media.co/the-open-source-software-saving-the-internet-from-ai-bot-scrapers/
author:
  - "[[Emanuel Maiberg]]"
published: 2025-07-07
created: 2025-07-07
description: Anubis, which block AI scrapers from scraping websites to death, has been downloaded almost 200,000 times.
tags:
  - open-source
  - linux
  - web
  - ai
category: computing
---
Listen to the [404 Media Podcast](https://www.404media.co/the-404-media-podcast/)

For someone who says she is fighting AI bot scrapers just in her free time, [Xe Iaso](https://xeiaso.net/?ref=404media.co) seems to be putting up an impressive fight. Since she launched it in January, Anubis, a “program is designed to help protect the small internet from the endless storm of requests that flood in from AI companies,” has been downloaded nearly 200,000 times, and is being used by notable organizations including GNOME, the popular open-source desktop environment for Linux, FFmpeg, the open-source software project for handling video and other media, and UNESCO, the United Nations organization for educations, science, and culture.

Iaso decided to develop Anubis after discovering that her own Git server was struggling with AI scrapers, bots that crawl the web hoovering up anything that can be used for the training data that power AI models. Like many [libraries, archives, and other small organizations](https://www.404media.co/ai-scraping-bots-are-breaking-open-libraries-archives-and-museums/), Iaso discovered her Git server was getting slammed only when it stopped working.

“I wasn't able to load it in my browser. I thought, huh, that's strange,” Iaso told me on a call. “So I looked at the logs and I figured out that it's restarted about 500 times in the last two days. So I looked in the access logs and I saw that \[an\] Amazon \[bot\] was clicking on every single link.”

Iaso knew it was an Amazon bot because it self identified as such. She said she considered withdrawing the Git server from the open web but that because she wants to keep some of the source code hosted there open to the public, she tried to stop the Amazon bot instead.

“I tried some things that I can’t admit in a recorded environment. None of them worked. So I had a bad idea,” she said. “I implemented some code. I put it up on GitHub in an experimental project dumping ground, and then the GNOME desktop environment started using it as a Hail Mary. And that's about when I knew that I had something on my hands.”

There are several ways people and organizations are trying to stop bots at the moment. Historically, [robots.txt](https://www.404media.co/the-backlash-against-ai-scraping-is-real-and-measurable/), a file sites could use to tell automated tools not to scrape, was a respected and sufficient norm for this purpose, but since the generative AI boom, major AI companies as well as less established companies and even individuals, [often ignored it](https://www.404media.co/websites-are-blocking-the-wrong-ai-scrapers-because-ai-companies-keep-making-new-ones/). CAPTCHAs, the little tests users take to prove they’re not a robot, aren’t great, Iaso said, because some AI bot scrapers have CAPTCHA solvers built in. Some developers have created “ [infinite mazes](https://www.404media.co/developer-creates-infinite-maze-to-trap-ai-crawlers-in/) ” that send AI bot scrapers from useless link to useless link, diverting them from the actual sites humans use and wasting their time. Cloudflare, the ubiquitous internet infrastructure company, has created a similar “ [AI labyrinth](https://blog.cloudflare.com/ai-labyrinth/?ref=404media.co) ” feature to trap bots.

Iaso, who said she deals with some generative AI at her day job, told me that “from what I have learned, poisoning datasets doesn't work. It makes you feel good, but it ends up using more compute than you end up saving. I don't know the polite way to say this, but if you piss in an ocean, the ocean does not turn into piss.”

In other words, Iaso thinks that it might be fun to mess with the AI bots that are trying to mess with the internet, but in many cases it’s not practical to send them on these wild goose chases because it requires resources Cloudflare might have, but small organizations and individuals don’t.

“Anubis is an uncaptcha,” Iaso explains on her [site](https://xeiaso.net/talks/2025/bsdcan-anubis/?ref=404media.co). “It uses features of your browser to automate a lot of the work that a CAPTCHA would, and right now the main implementation is by having it run a bunch of cryptographic math with JavaScript to prove that you can run JavaScript in a way that can be validated on the server.”

Essentially, Anubis verifies that any visitor to a site is a human using a browser as opposed to a bot. One of the ways it does this is by making the browser do a type of cryptographic math with JavaScript or other subtle checks that browsers do by default but bots have to be explicitly programmed to do. This check is invisible to the user, and most browsers since 2022 are able to complete this test. In theory, bot scrapers could pretend to be users with browsers as well, but the additional computational cost of doing so on the scale of scraping the entire internet would be huge. This way, Anubis creates a computational cost that is prohibitively expensive for AI scrapers that are hitting millions and millions of sites, but marginal for an individual user who is just using the internet like a human.

Anubis is free, open source, lightweight, can be self-hosted, and can be implemented almost anywhere. It also appears to be a pretty good solution for what we’ve repeatedly reported is a widespread problem across the internet, which helps explain its popularity. But Iaso is still putting a lot of work into improving it and adding features. She told me she’s working on a non cryptographic challenge so it taxes users’ CPUs less, and also thinking about a version that doesn’t require JavaScript, which some privacy-minded disable in their browsers.

The biggest challenge in developing Anubis, Iaso said, is finding the balance.

“The balance between figuring out how to block things without people being blocked, without affecting too many people with false positives,” she said. “And also making sure that the people running the bots can't figure out what pattern they're hitting, while also letting people that are caught in the web be able to figure out what pattern they're hitting, so that they can contact the organization and get help. So that's like, you know, the standard, impossible scenario.”

Iaso has a Patreon and is also supported by sponsors on Github who use Anubis, but she said she still doesn’t have enough financial support to develop it full time. She said that if she had the funding, she’d also hire one of the main contributors to the project. Ultimately, Anubis will always need more work because it is a never ending cat and mouse game between AI bot scrapers and the people trying to stop them.

Iaso said she thinks AI companies follow her work, and that if they really want to stop her and Anubis they just need to distract her.

“If you are working at an AI company, here's how you can sabotage Anubis development as easily and quickly as possible,” she wrote on [her site](https://xeiaso.net/talks/2025/bsdcan-anubis/?ref=404media.co). “So first is quit your job, second is work for Square Enix, and third is make absolute banger stuff for *Final Fantasy XIV*. That’s how you can sabotage this the best.”