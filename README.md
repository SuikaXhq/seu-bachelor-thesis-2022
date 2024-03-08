# 东南大学本科毕业设计（论文）XeLaTeX模版

本项目包含东南大学本科毕业设计（论文）XeLaTeX模版（2022-2024届），参考规范为教务处发布的2024年1月版毕业设计（论文）规范。

若发现问题，请提交Issue进行讨论，欢迎合理的Pull Request。

## 项目主页

本项目主页为https://github.com/SuikaXhq/seu-bachelor-thesis-2022

一个参考[Overleaf模版](https://www.overleaf.com/latex/templates/seu-bachelor-thesis-for-class-2022/zsysjvjqzhgx)可供用户快速上手使用。

## 依赖环境

- TeX Live 2020及以上或MikTeX2020及以上。使用TeX Live 2022编译会发生不明原因的错误，推荐使用2020或2021版本。

## 使用方法

文档使用方法的详细介绍请参见[样例论文](https://raw.github.com/SuikaXhq/seu-bachelor-thesis-2022/master/sample_thesis.pdf)和[使用手册](https://raw.github.com/SuikaXhq/seu-bachelor-thesis-2022/master/使用手册/seuthesis-2022-manual-1.0.5.pdf)。

- Windows下：

  1. 运行

     ```cmd
     ./sample_thesis.bat
     ```
     以编译样例论文。
- Mac下：

  1. 为sample_thesis.tex添加文档类选项“mac”，如

     ```latex
     \documentclass[mac]{seuthesis-2022}
     ```

  以支持mac字体。

  2. 运行

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
- VS Code下：（贡献者：[haoruilee](https://github.com/haoruilee)、[SuikaXhq](https://github.com/SuikaXhq)，代码文档请见.vscode/README.md）

  1. 安装插件[LaTeX WorkShop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
  2. 需要安装[Perl](https://strawberryperl.com/)才能使用LaTeXmk；若没有Perl，可以使用MikTeX的TeXify进行编译。
  3. 使用vscode打开本项目根目录
  4. 打开sample_thesis.tex，左侧会出现花写的TeX插件，文件右上角会出现 *▶︎（Build LaTeX Project）*
     - TeX Live用户：请点击下拉菜单中的Recipe: LaTeXmk
     - MikTeX用户：请点击下拉菜单中的Recipe: TeXify
  5. 一键build，等待build文件夹中输出编译结果
     - TeXify输出在根目录下
