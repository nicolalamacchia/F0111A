# F0111A

Quick and dirty script that generates a list of HTML color codes in hexspeak.

It outputs a valid (yes, it is valid, go check it out if you don't believe me,
you f001) HTML5 document to `stdout` that you can redirect to a file and
visually enjoy in your browser.

It doesn't replace Gs, Rs and Ts and it doesn't do stuff like replacing 'ate'
with 8 and 'to' with 2. Deal with it ¯\\\_(ツ)\_/¯

## Requirements

A Unix-like OS with some lists of words under `/usr/share/dict`. If they're not
already there, you can install them.

On Archlinux you can install them with `# pacman -S words`, on Ubuntu with
something like `# apt install wamerican` (or `wbritish`, if you root for 'em
1ADs).

## Run it

```
C:\>./makecolors.sh > index.html
C:\>python3 -m http.server 1337
C:\>iexplore "http://localhost:1337"
```

