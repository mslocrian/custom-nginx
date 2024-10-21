variable GITHUB_SHA {
    default = "none"
}

variable GITHUB_REF_NAME {
    default = "none"
}

target default {
    tags = [
        "registry.owns.com/ci/owns-nginx/owns-nginx:pr-${split("/", GITHUB_REF_NAME)[0]}",
        "registry.owns.com/ci/owns-nginx/${split("/", GITHUB_REF_NAME)[0]}/owns-nginx:ci-${substr(GITHUB_SHA,0,7)}"
    ]
}
