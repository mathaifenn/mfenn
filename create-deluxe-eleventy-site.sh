#!/bin/bash

# Check if project name is provided
if [ -z "$1" ]; then
  echo "Usage: ./create-deluxe-eleventy-site.sh <project-folder-name>"
  exit 1
fi

# Create project folder and navigate into it
mkdir "$1"
cd "$1" || exit

# Initialize npm and install Eleventy
npm init -y
npm install @11ty/eleventy --save-dev

# Create content structure
mkdir -p src/_includes src/blog src/gallery src/videos

# Create index.md
cat <<EOF > src/index.md
---
layout: layout.njk
title: Home
---

# Welcome to \$1

This is your homepage. Choose where to go:

- [Blog](blog/)
- [Gallery](gallery/)
- [Videos](videos/)
EOF

# Create a sample blog post
cat <<EOF > src/blog/first-post.md
---
layout: layout.njk
title: My First Blog Post
---

## This is your first blog post

Write something insightful here.
EOF

# Create a sample gallery page
cat <<EOF > src/gallery/index.md
---
layout: layout.njk
title: Gallery
---

## Photo Gallery

<img src="/images/sample.jpg" alt="Sample Image" style="width:300px; border: 2px solid #ccc; margin: 10px;" />
EOF

# Create a sample video page
cat <<EOF > src/videos/index.md
---
layout: layout.njk
title: Videos
---

## Featured Video

<iframe width="560" height="315" src="https://www.youtube.com/embed/dQw4w9WgXcQ" 
title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
EOF

# Create layout.njk
cat <<EOF > src/_includes/layout.njk
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <title>{{ '{{ title }}' }}</title>
    <style>
      body {
        font-family: sans-serif;
        max-width: 800px;
        margin: auto;
        padding: 2rem;
        line-height: 1.6;
      }
      a {
        color: #007acc;
        text-decoration: none;
      }
      a:hover {
        text-decoration: underline;
      }
    </style>
  </head>
  <body>
    {{ '{{ content | safe }}' }}
  </body>
</html>
EOF

echo "✅ Deluxe Eleventy site created in '$1'."
echo "To view it, run:"
echo "cd $1 && npx @11ty/eleventy --serve"
