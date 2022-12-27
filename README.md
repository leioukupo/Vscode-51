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
> k可以编译多个文件的51项目，但是会报Compilation Failed: Code 0，经测试不影响hex文件，所以我关闭了错误提示         
> 文件名字过长会导致编译时无法补全文件名字
# 解决办法
>关闭vscode底栏问题
>在其他工作区出问题时会再次出现,问题解决后又会自动消失.所以我觉得这是一个完美的解决办法
