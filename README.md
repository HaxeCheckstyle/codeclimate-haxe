# Code Climate Haxe Checkstyle Engine

`codeclimate-haxe-checkstyle` is a Code Climate engine that wraps [haxe-checkstyle](https://github.com/HaxeCheckstyle/haxe-checkstyle). You can run it on your command line using the Code Climate CLI, or on Code Climate's hosted analysis platform.

**HaxeCheckstyle** is a static analysis tool to help developers write Haxe code that adheres to a coding standard.  It can be configured using a [configuration file](https://github.com/HaxeCheckstyle/haxe-checkstyle/blob/dev/resources/default-config.json).

### Installation

1. If you haven't already, [install the Code Climate CLI](https://github.com/codeclimate/codeclimate).
2. Run `codeclimate engines:install haxe-checkstyle` to install the engine.
3. Create a `.codeclimate.yml` file with:
```
engines:
  haxe-checkstyle:
    enabled: true
```
4. You're ready to analyze! Browse into your project's folder and run `codeclimate analyze`.

### Need help?

For help with Haxe Checkstyle, check out the [repo](https://github.com/HaxeCheckstyle/haxe-checkstyle) or [documentation](http://haxecheckstyle.github.io/docs/haxe-checkstyle/home.html).
