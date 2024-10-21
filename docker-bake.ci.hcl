variable GITHUB_SHA {
    default = "none"
}

variable GITHUB_REF_NAME {
    default = "none"
}

target default {
    tags = [
        "registry.owns.com/owns-nginx/nginx:pr-${split("/", GITHUB_REF_NAME)[0]}",
        "registry.owns.com/owns-nginx/${split("/", GITHUB_REF_NAME)[0]}/nginx:ci-${substr(GITHUB_SHA,0,7)}"
    ]
}
