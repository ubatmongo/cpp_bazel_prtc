
def custom_cc_library(
    name,
    srcs = [],
    hdrs = [],
    deps = [],
    testonly = False,
    visibility = None,
    data = [],
    tags = [],
    copts = [],
    local_defines = [],
):
    """
    custom problems that no one has
    """
    native.cc_library(
        name = name + ".so",
        srcs = srcs,
        hdrs = hdrs,
        deps = deps,
        visibility = visibility,
        testonly = testonly,
        copts = copts,
        data = data,
        tags = tags,
        local_defines = local_defines,
        includes = [],
    )
