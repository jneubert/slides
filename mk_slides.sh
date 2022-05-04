#!/bin/sh

# invoke pandoc to create reveal-js slides from markdown

pandoc ./slides.md --css css/reset.css --css css/reveal.css --css css/theme/black.css --output ./index.html
