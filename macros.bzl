load("@npm_bazel_typescript//:index.bzl", real_ts_library = "ts_library")

def ts_library(**kwargs):
    real_ts_library(
        devmode_module = "commonjs",
        prodmode_module = "commonjs",
        prodmode_target = "es2015",
        devmode_target = "es2015",
        **kwargs
    )
