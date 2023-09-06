# Lynx Text Browser


**From rwxrob/dot/lynx/README.md**

"""
*New and Improved! You can now test this as a [container]:*

```
docker run -it --rm rwxrob/lynx
```

It might be the oldest web browser currently under active maintenance
but it is still hands down the single best browser for rapid research.
Lynx does not even look at the bloat of images, CSS, and JavaScript when
loading making it objectively the fastest possible way to browse the
text of web sites. When combined with a `?` (`duck`) [...] 
command you fill find results to documentation queries and technical
documentation as fast as it takes to open a local `man` page.
"""

## Install

Run the `./setup` to

## Source
Taken from [rwxrob dotfilles](https://github.com/rwxrob/dot/blob/main/lynx/)

## What changes (as far as I know) from vanilla lynx configs
  - `j` `k` navigating betweens hyperlink
  - `l` for opening link
  - `h` for previous page
  - `,` to open external browser

# What I changed from rwxrob configs
  - Change `EXTERNAL:http:` to firefox at line 3123 of `lynx.cfg`
