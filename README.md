# dart shelf-server hot reload demo

dart 服务端 热重载🌰


## 开发环境运行

```shell
 dart run --enable-vm-service bin/server.dart 
```

## 正式环境运行

```shell
dart run bin/server.dart
```

## 正式环境打包

```shell
dart compile exe bin/main.dart -o main
```

## 热重载更改代码

1. ide 修改后保存即可生效