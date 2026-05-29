<h1 align=center>Dockette / Nexus</h1>

<p align=center>
   <a href="https://github.com/dockette/nexus/actions"><img src="https://github.com/dockette/nexus/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/nexus"><img src="https://img.shields.io/docker/pulls/dockette/nexus.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

<p align=center>
🕹 <a href="https://f3l1x.io">f3l1x.io</a> | 💻 <a href="https://github.com/f3l1x">f3l1x</a> | 🐦 <a href="https://twitter.com/xf3l1x">@xf3l1x</a>
</p>

<p align=center>
   🎁 Sonatype Nexus Repository Manager 3 with preinstalled community plugins
</p>

![](https://github.com/dockette/nexus/blob/master/.docs/nexus.png "Nexus")

-----

## Usage

```
docker run -it --rm -p 8081:8081 -v $(pwd)/data:/nexus-data dockette/nexus:3.82.1-java17-ubi
```

## Documentation

This is Nexus 3 OSS build with full-features community plugins.

**Community repositories** (`3.78+`)

- WIP

**Community repositories** (`<3.71`)

- apk
- composer
- cpan
- puppet

**Defaults**

Default repositories are disabled. Nexus is completly clean by default.

<p>
    <img width="350" src="https://github.com/dockette/nexus/blob/master/.docs/repos1.png">
    <img width="350" src="https://github.com/dockette/nexus/blob/master/.docs/repos2.png">
</p>

**Community blobstores**

- azure
- google

<p>
    <img width="700" src="https://github.com/dockette/nexus/blob/master/.docs/blobstores.png">
</p>

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
