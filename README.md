# 使用要求
> 1. 需要安装VScode
> 2. 需要安装keil(推荐最新的keil5,我使用的是keil5,其他版本请自行测试)
# 改进效果
> 1. build目录存放hex文件,其他文件统一存放到obj目录
> 2. 任意目录均可编译,不需要在src中放入文件

# 使用说明
## 更改路径
> 找到 **.vscode** 目录下的compileKeil.bat
> 将 **KEIL_BIN_FOLDER** 更改为你的keil的BIN目录 例如 **D:\Keil5\C51\BIN**
> 在 **c_cpp_properties.json** 找到**includePath** 添加 keil的 **INV** 目录 例如 
```json
            "includePath": [
                "${workspaceFolder}/**",
                "D:/Keil5/C51/INC/**"
            ],
```
# 编译方法
+ ## 快捷键
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>B</kbd> 

+ ##使用菜单
> 1. 点击终端
> 2. 选择运行生成任务

![使用菜单](readme.assets/%E4%BD%BF%E7%94%A8%E8%8F%9C%E5%8D%95.png)  
# 问题
> 涉及多个文件编译时会vscode会提示UNRESOLVED EXTERNAL SYMBOL 和 REFERENCE MADE TO UNRESOLVED EXTERNAL       
> 但是不影响编译,编译依旧成功无误
# 解决办法
>关闭vscode底栏问题
