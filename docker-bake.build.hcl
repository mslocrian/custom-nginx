  # todo should be marked as required, see https://github.com/docker/buildx/issues/1346
variable VERSION {
  default = ""
}

target default {
    tags = [
        "registry.owns.com/owns-nginx:${VERSION}",
        "registry.owns.com/owns-nginx:latest"
    ]
}
