variable SHA {
    default = "ci"
}

target default {
    tags = [
        "registry.owns.com/owns-nginx:${ubstr(SHA,0,7)}"
    ]
}
