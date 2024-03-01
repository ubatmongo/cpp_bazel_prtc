
# https://bazel.build/versions/6.3.0/reference/be/general#genquery
# this results in empty result in bazel-bin/tag-build-deps
genquery(
    name = "tag-build-deps",
    expression = "attr('tags', 'tag-build', //:...)",
    scope = ["//:..."],
)

# https://bazel.build/versions/6.3.0/reference/be/general#genrule
# used in mms: https://github.com/10gen/mms/blob/87fc4c59c2558130f939f1c278ae1c904d07ca0a/python/bazel/containers.bzl#L42-L47
### ERROR: The 'query' command is only supported from within a workspace (below a directory having a WORKSPACE file).
### See documentation at https://bazel.build/concepts/build-ref#workspace
### Target //:tag-build-deps-rule failed to build
genrule(
    name = "tag-build-deps-rule",
    outs = ["tag-build-deps-out"],
    cmd = "bazel query 'attr(\"tags\", \"tag-build\", //...)'",
    executable = False,
)
