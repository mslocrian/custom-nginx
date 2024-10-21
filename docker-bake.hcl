variable VERSION {
    default = "latest"
}

variable SHA {
    default = "unknown"
}


target default {
    context = "image"
    contexts = {
        base = "docker-image://alpine:3.20.3"
    }
    args = {
        BUILDKIT_SYNTAX = "docker/dockerfile:1.6.0"
    }
    labels = {
        "org.opencontainers.image.version"     = VERSION
        "org.opencontainers.image.revision"    = SHA
        "org.opencontainers.image.source"      = "https://github.com/mslocrian/owns-nginx"
        "org.opencontainers.image.title"       = "Custom Nginx Image"
        "org.opencontainers.image.description" = "Custom Nginx Image w/ nginx more headers"
        "org.opencontainers.image.authors"     = "stegen@owns.com"
        "org.opencontainers.image.url"         = "https://github.com/mslocrian/owns-nginx"
        "org.opencontainers.image.vendor"      = "Owns"
    }
    platforms = [
        # force linux/amd64. otherwise the default on Apple M1 is to try build from linux/arm64 base images
        "linux/amd64",
    ]
    tags = ["sign-jenkins"]
    secret = [
        "id=artifactory_user,env=CORP_ARTIFACTORY_USERNAME",
        "id=artifactory_pass,env=CORP_ARTIFACTORY_PASSWORD",
        "id=git_token,env=ES_GIT_ACCESS_TOKEN",
    ]
}
