# 东南大学本科毕业设计（论文）XeLaTeX模版
本项目包含东南大学本科毕业设计（论文）XeLaTeX模版（2022届），参考规范为教务处发布的2019年9月版毕业设计（论文）规范。

若发现问题，请提交Issue进行讨论，欢迎合理的Pull Request。

## 项目主页
本项目主页为https://github.com/SuikaXhq/seu-bachelor-thesis-2022

## 依赖环境

- TeX Live 2020及以上或MikTeX2020及以上


## 使用方法

文档使用方法的详细介绍请参见[样例论文](https://raw.github.com/SuikaXhq/seu-bachelor-thesis-2022/master/sample_thesis.pdf)和[使用手册](https://raw.github.com/SuikaXhq/seu-bachelor-thesis-2022/master/使用手册/seuthesis-2022使用手册.pdf)。

- Windows下：

  2. 运行

     ```cmd
     ./sample_thesis.bat
     ```

     以编译样例论文。

- Mac下：

  2. 为sample_thesis.tex添加文档类选项“mac”，如

      ```latex
      \documentclass[mac]{seuthesis-2022}
      ```

   以支持mac字体。

  3. 运行

     ```shell
     ./sample_thesis.sh
     ```

     以编译样例论文。

- Overleaf下：

  1. 上传以下内容至Overleaf项目：

     - resources文件夹及其中文件
     - fig文件夹及其中文件
     - seuthesis-2022.cfg
     - seuthesis-2022.cls
     - sample_thesis.tex
     - reference.bib

  2. 选择Overleaf项目选项：

     - 编译器（Compiler）：XeLaTeX
     - TeX Live版本（TeX Live Version）：2021
     - 主文档（main document）：sample_thesis.tex

  3. 为sample_thesis.tex添加文档类选项“fandol”，如

     ```latex
     \documentclass[fandol]{seuthesis-2022}
     ```

  4. 编译sample_thesis.tex。