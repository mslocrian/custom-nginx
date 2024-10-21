variable GITHUB_SHA {
    default = "none"
}

target default {
    tags = [
        "registry.owns.com/owns-nginx:ci-${substr(GITHUB_SHA,0,7)}"
    ]
}
