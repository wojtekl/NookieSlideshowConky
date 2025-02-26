# NookieSlideshowConky
random slideshow script for Conky

## SCREENSHOTS
![Preview](/preview.png)

## AUTHORS
- [Alessandro Roncone](http://alecive.deviantart.com/art/Nookie-Slideshow-Conky-283436023),
- [wojtekel](http://mojemiejsce-wojtekel.rhcloud.com).

## CHANGELOG
- content of slideshow.sh moved to file NookieSlideshowConky, file slideshow.sh no longer required.

## NEWS
- image changes every ten minutes.

## CONFIGURE
In NookieSlideshowConky file:
- replace '$HOME/Pictures' with your images path,
- change '600' where 'texeci 600' to set slideshow interval,
- replace 'big' with 'small' or 'medium' where 'dim=\"big\"' to set widget size.

## INSTALL
1. Move NookieSlideshowConky directory to $HOME/.conky.
2. Add line 'conky -c ~/NookieSlideshowConky/NookieSlideshowConky' to conky-startup.sh.
