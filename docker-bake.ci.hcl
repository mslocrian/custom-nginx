variable GITHUB_SHA {
    default = "none"
}

variable GITHUB_PR {
    default = "00"
}

target default {
    tags = [
        "registry.owns.com/ci/owns-nginx/owns-nginx:pr-${GITHUB_PR}",
        "registry.owns.com/ci/owns-nginx/${GITHUB_PR}/owns-nginx:ci-${substr(GITHUB_SHA,0,7)}"
    ]
}
