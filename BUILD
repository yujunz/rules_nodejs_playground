load("@build_bazel_rules_nodejs//:index.bzl", "nodejs_binary")

nodejs_binary(
    name = "history-server",
    data = ["@npm//history-server"],
    entry_point = "@npm//:node_modules/history-server/modules/cli.js",
)
