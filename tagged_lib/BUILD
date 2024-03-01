load("@rules_cc//cc:defs.bzl", "cc_binary", "cc_library")

cc_library(
    name = "tagged-lib",
    srcs = ["tagger.cc"],
    hdrs = ["tagger.h"],
    tags = ["tag-build"],
)

cc_binary(
    name = "tagged",
    srcs = ["tagger.cc"],
    deps = [
        ":tagged-lib",
        "//lib:hello-time",
    ],
)
