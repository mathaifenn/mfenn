---
layout: layout.njk
title: How to Deploy and Update Your Site
date: 2025-07-23
description: Instructions on how to manage and maintain the static Eleventy site.
tags: [deployment, workflow, guide]
---

# How to Deploy and Update Your Eleventy Site

This site is built using [Eleventy](https://www.11ty.dev/), hosted via [Netlify](https://www.netlify.com/), and version-controlled through [GitHub](https://github.com).

## ✍️ Workflow Overview

1. Edit or create `.md` content using **MarkText** or any Markdown editor.
2. Run Eleventy locally to preview:
   ```bash
   npx @11ty/eleventy --serve
