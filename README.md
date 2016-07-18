# docker-jsc

### Usage

```bash
$ docker run --rm -i -t pandeiro/jsc
```

### Building

```bash
$ docker build -t jsc . # takes a little while :)
```

### Resources

- [How to Build JavaScriptCore on Your Machine](http://constellation.github.io/blog/2016/05/02/how-to-build-javascriptcore-on-your-machine/)

---

### TODO

- Use `svn` instead of git and build specific versions. See [here](http://stackoverflow.com/questions/3958592/how-to-check-out-particular-version-of-webkit-with-svn).
- Set up Docker Hub automatic build for each version.
