terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

provider "docker" {
  host = "unix:///var/run/docker.sock"
}

resource "docker_image" "custom_nginx" {
  name         = "nginx:alpine"
  keep_locally = false
}

resource "docker_container" "web_server" {
  name  = "unique-nginx-container"
  image = docker_image.custom_nginx.latest
  ports {
    internal = 80
    external = 9090
  }
  restart = "always"
}
