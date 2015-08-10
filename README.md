Docker-Hastebin
============
A docker container for hastebin server by [Alejandro Baez](https://twitter.com/a_baez).
--------------------------------------

### DESCRIPTION
A simple docker container for the hastebin server. Uses a customized version
of the original hastebin server. Has both an updated version of [highlight.js](https://highlightjs.org/download/)
and uses [Solarized Light](http://ethanschoonover.com/solarized) for the theme.

### USAGE
If using from source, simply clone the repository and run by using the
contained `docker-compose.yml` file.

```
git clone https://github.com/abaez/docker-hastebin.git docker-hastebin
cd docker-hastebin
docker-compose up
```
If using the docker container directly, then you can use the docker build.

```
docker run -p 7777:7777 abaez/docker-hastebin
```
If you want to use as a systemd service, then link the docker-hastebin@.service
file to your multi-user path with the port you want like so:

```
ln -s <docker-hastebin source>/docker-hastebin@.service \
/etc/systemd/system/multi-user.target.wants/docker-hastebin@<port you want>.service
```
Then simply start the service:

```
sudo systemctl start docker-hastebin@<port you want>
```
### LICENSE
The MIT License (MIT)

Copyright (c) 2015 [Alejandro Baez](https://twitter.com/a_baez)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.


