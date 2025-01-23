
### Docker Files

Just some files.  My files!  Docker files.

Clone the repo
```shell
docker build -t IMAGE_NAME_YOUD_LIKE -f PATH_TO_DOCKER_FILE .
```

<br>

### Who and Why?

**alpine_hugo**
> openSUSE Leap doesn't currently have a Hugo package, so this is *obviously* the next best option

<details>
<summary>Running Alpine...</summary>

> Running the Hugo Alpine docker image & mounting the current directory
> ```shell
> docker run --mount src="$(pwd)",target=/test_container,type=bind -p 1313:1313 -it alpine/hugo
> cd test_container
> 
> ```
> 
> [The Hugo Quick Start Guide](https://gohugo.io/getting-started/quick-start/)
> 
> Running Hugo
> ```shell
> hugo server --bind=0.0.0.0
> ```
</details>

<br>

**powershell_exchange_ms_graph**
> I have to use Microsoft's system management stuff :(  
> This one pre-installs Microsoft Graph and the Exchange Module so you don't have to

**ubuntu_lagrange**
> I just wanted to fix [this thing](https://github.com/skyjake/lagrange/issues/612)

**tumbleweed_dev**
> Using OpenSUSE Tumbleweed as a Dev Container
