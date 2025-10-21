[![Image Size](https://badges.cssnr.com/ghcr/size/cssnr/docker-nginx-static)](https://github.com/cssnr/docker-nginx-static/pkgs/container/docker-nginx-proxy)
[![Image Latest](https://badges.cssnr.com/ghcr/tags/cssnr/docker-nginx-static/latest)](https://github.com/cssnr/docker-nginx-static/pkgs/container/docker-nginx-proxy)
[![GitHub Tag Major](https://img.shields.io/github/v/tag/cssnr/docker-nginx-static?sort=semver&filter=!*.*&logo=git&logoColor=white&labelColor=585858&label=%20)](https://github.com/cssnr/docker-nginx-static/tags)
[![GitHub Tag Minor](https://img.shields.io/github/v/tag/cssnr/docker-nginx-static?sort=semver&filter=!*.*.*&logo=git&logoColor=white&labelColor=585858&label=%20)](https://github.com/cssnr/docker-nginx-static/releases)
[![GitHub Tag Release](https://img.shields.io/github/v/tag/cssnr/docker-nginx-static?sort=semver&filter=!*.*.*.*&logo=git&logoColor=white&labelColor=585858&label=%20)](https://github.com/cssnr/docker-nginx-static/releases/latest)
[![GitHub Release Version](https://img.shields.io/github/v/release/cssnr/docker-nginx-static?logo=github)](https://github.com/cssnr/docker-nginx-static/releases/latest)
[![Workflow Build](https://img.shields.io/github/actions/workflow/status/cssnr/docker-nginx-static/build.yaml?logo=cachet&label=build)](https://github.com/cssnr/docker-nginx-static/actions/workflows/build.yaml)
[![Workflow Lint](https://img.shields.io/github/actions/workflow/status/cssnr/docker-nginx-static/lint.yaml?logo=cachet&label=lint)](https://github.com/cssnr/docker-nginx-static/actions/workflows/lint.yaml)
[![GitHub Last Commit](https://img.shields.io/github/last-commit/cssnr/docker-nginx-static?logo=github&label=updated)](https://github.com/cssnr/docker-nginx-static/pulse)
[![GitHub Contributors](https://img.shields.io/github/contributors-anon/cssnr/docker-nginx-static?logo=github)](https://github.com/cssnr/docker-nginx-static/graphs/contributors)
[![GitHub Repo Size](https://img.shields.io/github/repo-size/cssnr/docker-nginx-static?logo=bookstack&logoColor=white&label=repo%20size)](https://github.com/cssnr/docker-nginx-static?tab=readme-ov-file#readme)
[![GitHub Top Language](https://img.shields.io/github/languages/top/cssnr/docker-nginx-static?logo=htmx)](https://github.com/cssnr/docker-nginx-static/tree/master/src)
[![GitHub Discussions](https://img.shields.io/github/discussions/cssnr/docker-nginx-static?logo=github)](https://github.com/cssnr/docker-nginx-static/discussions)
[![GitHub Forks](https://img.shields.io/github/forks/cssnr/docker-nginx-static?style=flat&logo=github)](https://github.com/cssnr/docker-nginx-static/forks)
[![GitHub Repo Stars](https://img.shields.io/github/stars/cssnr/docker-nginx-static?style=flat&logo=github)](https://github.com/cssnr/docker-nginx-static/stargazers)
[![GitHub Org Stars](https://img.shields.io/github/stars/cssnr?style=flat&logo=github&label=org%20stars)](https://cssnr.github.io/)
[![Discord](https://img.shields.io/discord/899171661457293343?logo=discord&logoColor=white&label=discord&color=7289da)](https://discord.gg/wXy6m2X8wY)
[![Ko-fi](https://img.shields.io/badge/Ko--fi-72a5f2?logo=kofi&label=support)](https://ko-fi.com/cssnr)

# Docker Nginx Static

Docker Static Web Server

Coming Soon...

## Options

| Variable    |    Default     | Description&nbsp;of&nbsp;Environment&nbsp;Variable |
| :---------- | :------------: | :------------------------------------------------- |
| STATIC      |    /static     | Nginx root directory                               |
| SUID        |      1000      | Directory group/user ID                            |
| GZIP_TYPES  |       -        | Nginx content gzip_types to compress               |
| GZIP_LENGTH |     `1000`     | Minimum content size to compress                   |
| BASIC_AUTH  |       -        | Basic auth file contents                           |
| BASIC_REALM | `Unauthorized` | Minimum content size to compress                   |

See the [src/10-setup.sh](src/10-setup.sh) file for more details.

#### Basic Auth

```shell
$ htpasswd -nb user pass
user:$apr1$XFVN0nJA$IgZxtMHVAeA.Pu7ufU7/I0
```

Replace all `$` with `$$` for docker-compose.yaml files.  
Use `\n` for newlines to add multiple credentials.

```yaml
environment:
  BASIC_AUTH: 'user:$$apr1$$XFVN0nJA$$IgZxtMHVAeA.Pu7ufU7/I0\nuser2:$$apr1$$vswJgdwo$$2XkDOrvJFQ2pKwrXqGeWM0'
```

AI is Retarded.

## Support

Please let us know if you run into any [issues](https://github.com/cssnr/docker-nginx-static/issues)
or want to see [new features](https://github.com/cssnr/docker-nginx-static/discussions/categories/feature-requests)...

For general help or to request a feature:

- Q&A Discussion: https://github.com/cssnr/docker-nginx-static/discussions/categories/q-a
- Request a Feature: https://github.com/cssnr/docker-nginx-static/discussions/categories/feature-requests

If you are experiencing an issue/bug or getting unexpected results:

- Report an Issue: https://github.com/cssnr/docker-nginx-static/issues
- Chat with us on Discord: https://discord.gg/wXy6m2X8wY
- Provide General Feedback: [https://cssnr.github.io/feedback/](https://cssnr.github.io/feedback/)

# Contributing

Please consider making a donation to support the development of this project
and [additional](https://cssnr.com/) open source projects.

[![Ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/cssnr)

If you would like to submit a PR, please review the [CONTRIBUTING.md](#contributing-ov-file).

For a full list of current projects visit: [https://cssnr.github.io/](https://cssnr.github.io/)
