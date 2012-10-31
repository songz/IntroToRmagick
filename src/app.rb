# DOCS: http://www.imagemagick.org/RMagick/doc/

require 'RMagick'
include Magick

# First, read the file
img = Magick::Image::read("gang.jpeg")[0]

# Change file format
img.format = "png"
img.write("result/format.png")

# Generate Thumbnail by resizing
img.thumbnail!(0.5)
img.format = "png"
img.write("result/thumb.png")

# Write Text to File
txt = Draw.new
img.annotate(txt, 0,0,0,0, "IM A BOSS"){
  txt.gravity = Magick::SouthGravity
  txt.pointsize = 25
  txt.stroke = "#ffaaaaff"
  txt.fill = "#ffaaaaff"
}
img.format = "png"
img.write("result/text.png")

# Charcoal Filters!
img2 = img.charcoal
img2.format = "png"
img2.write("result/charcoal.png")

# Blur Filter
img3 = img.motion_blur(0, 10, 30) #radius, sigma, angle
img3.write("result/blur.png")

# Building a collage
## First Create a canvas, fill it with pattern
canvas = Magick::Image.new( 700, 250 )
pattern = Magick::Image::read( "pattern.png")[0]
canvas = canvas.texture_fill_to_border(0,0, pattern)

## Draw a few images onto canvas!
### Resize image
img.crop_resized!(200, 200, Magick::CenterGravity)
img2.crop_resized!(200, 200, Magick::CenterGravity)
img3.crop_resized!(200, 200, Magick::CenterGravity)
canvas.composite!( img, 25, 25, Magick::OverCompositeOp )
canvas.composite!( img2, 250, 25, Magick::OverCompositeOp )
canvas.composite!( img3, 475, 25, Magick::OverCompositeOp )

## Lastly, write out the finished canvas
canvas.format = "png"
canvas.write("result/canvas.png")
