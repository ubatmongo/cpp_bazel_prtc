#!/bin/bash

bazel build //main:hello-world                                                                                 [17:55:32]

bazel query "deps(//main:hello-world)" --noimplicit_deps

bazel query 'attr("tags", "tag-build", //main:hello-world)'

bazel query 'attr("tags", "tag-build", //...)'
## result
# //main:hello-greet
# //tagged_lib:tagged-lib

# following are empty results
bazel query "attr('tags', 'tag-build', //:*)"
bazel query "attr('tags', 'tag-build', //:all)"
bazel query "attr('tags', 'tag-build', //:..)"

bazel build //:tag-build-deps-rule
bazel build //:tag-build-deps
