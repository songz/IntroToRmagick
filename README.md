First Steps into RMagick
===========================

## Intro
I gave [a talk](http://www.meetup.com/SFRails/events/77881422/) about image processing with RMagick. Here's the source code for what I demoed. Everything here is very basic and it's meant to get you started on the right track to building more exciting stuff.

## Topics
From the example you will learn how to convert images to different formats, generate memes, resize images, apply filters (blur, saturation, etc), and building an image collage.

## Installing RMagick
1. Install ImageMagick
> `brew install imagemagick`
2. Install GhostScript
> `brew install ghostscript`  
3. Install RMagick
> `gem install rmagick`

To use Rmagick in services like [heroku](http://heroku.com) or [iron.io](http://iron.io), simply include `rmagick` in your gemfile. These services should already have rmagick set up.

## How to run
Inside the `src` folder is a ruby script. Simply type `ruby app.rb` to run it. The ruby script will generate images into the `results` folder

## File Description
`app.rb` in the src folder contains the ruby code. It is very well documented. 

## Contact
For questions about me, what I do, and other exciting things [tweet me](http://twitter.com/songz)!

# Happy Coding!

