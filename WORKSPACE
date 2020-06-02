workspace(
    name = "bazelbuild_vscode",
    managed_directories = {"@npm": ["node_modules"]},
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

http_archive(
    name = "rules_python",
    url = "https://github.com/bazelbuild/rules_python/releases/download/0.0.2/rules_python-0.0.2.tar.gz",
    strip_prefix = "rules_python-0.0.2",
    sha256 = "b5668cde8bb6e3515057ef465a35ad712214962f0b3a314e551204266c7be90c",
)
load("@rules_python//python:repositories.bzl", "py_repositories")

py_repositories()

http_archive(
    name = "bazel_skylib",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
        "https://github.com/bazelbuild/bazel-skylib/releases/download/1.0.2/bazel-skylib-1.0.2.tar.gz",
    ],
    sha256 = "97e70364e9249702246c0e9444bccdc4b847bed1eb03c5a3ece4f83dfe6abc44",
)
load("@bazel_skylib//:workspace.bzl", "bazel_skylib_workspace")
bazel_skylib_workspace()

http_archive(
    name = "com_google_protobuf",
    strip_prefix = "protobuf-3.12.2",
    urls = ["https://github.com/protocolbuffers/protobuf/releases/download/v3.12.2/protobuf-all-3.12.2.tar.gz"],
    sha256 = "e610c6633763bceec08a647d0605f5df0f9c960028ef32c0730e3df23164fb0d",
)

load("@com_google_protobuf//:protobuf_deps.bzl", "protobuf_deps")

protobuf_deps()

http_archive(
    name = "io_bazel",
    patch_args = ["-p1"],
    strip_prefix = "bazel-3.2.0",
    patches = ["//third_party/bazel:3.2.0.patch"],
    urls = ["https://github.com/bazelbuild/bazel/archive/3.2.0.tar.gz"],
    sha256 = "7766edc4c3bef7f92c2c25ca76a35f15f22c0ec21d8a45de8035dc9f6b94efeb",
)

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "84abf7ac4234a70924628baa9a73a5a5cbad944c4358cf9abdb4aab29c9a5b77",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/1.7.0/rules_nodejs-1.7.0.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories", "yarn_install")

node_repositories(package_json = ["//:package.json"])

yarn_install(
    name = "npm",
    package_json = "//:package.json",
    yarn_lock = "//:yarn.lock",
)

load("@npm//:install_bazel_dependencies.bzl", "install_bazel_dependencies")

install_bazel_dependencies()

load("@npm_bazel_labs//:package.bzl", "npm_bazel_labs_dependencies")

npm_bazel_labs_dependencies()

load("@npm_bazel_typescript//:index.bzl", "ts_setup_workspace")

ts_setup_workspace()
