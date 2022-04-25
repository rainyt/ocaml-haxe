## 注意 Warring
这还不是一个完成的项目，仍然在积极开发中。This is not a completed project and is still under active development.

## OCaml-haxe
这是一个使用Haxe编写OCaml的宏工具。This is a macro tool for writing Ocaml using haxe.

## 简单的测试
```shell
haxe build.hxml
```

## 运行OCaml脚本
当如果需要测试OCaml文件时，请按照OCaml文档正确安装OCaml，并拥有dune的环境，接下来：
```shell
dune exec bin
```

## 项目结构
- bin 这是编译出来的项目ml内容。（已重构）
- haxe_test/project 这是编译ml的Haxe内容。

## 路线图
陆续实现Haxe的所能支持的语法，由于是第一次对语言进行翻译，还不确定能完成到什么程度，后续再更新路线图。Realize the syntax that haxe can support one after another. Since it is the first time to translate the language, it is uncertain to what extent it can be completed. Update the roadmap later

所有实现正在重构：

- [ ] return应判断方法返回类型。
- [x] 支持using语句。
- [ ] 新增一个OCaml的extern自动化工具。
- [x] trace输出，能够自动识别每个参数的类型，使用Printf.printf正确输出的支持。
- [x] 类型推导（重构后不再需要判断，使用Haxe自身的AST解析）
- [ ] 非静态方法调用实现
- [x] extern OCaml API @:native 支持
    - OCaml的API仍然可以通过extern以及@:native来实现。OCaml's API can still be implemented through extern and @: native.
- [ ] 基础语法转译OCaml (Basic grammar translation OCaml)
- [x] 类型方法访问 (Type method access)
- [x] 判断语句IF (If)
- [x] Return与Break （Return and Break）
    - OCaml中不支持return/break，但在Haxe中仍然可以使用。Return / Break is not supported in Ocaml, but it can still be used in haxe.
- [ ] Switch int float string
- [ ] Switch Enum
- [ ] Array数组访问与创建
- [ ] String字符串操作API
- [x] For循环
- [x] While循环
- [x] 基础运算符:+ - * / += /= *= -= -- ++
    - 运算符有增强实现，会自动转换为String/Float，不受OCaml的类型限制。The operator has an enhanced implementation and will be automatically converted to string / float, which is not limited by the type of Ocaml.
- [ ] 标签变量
    - 可通过`@param 1`的表达式来处理，例如：`ApiTest.labelFunc(@a 1, @b 2)`
    - 注意不能含:，否则会无法识别。