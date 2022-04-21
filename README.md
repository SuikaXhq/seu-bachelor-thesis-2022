# 东南大学本科毕业设计（论文）LaTeX模版
本项目包含东南大学本科毕业设计（论文）LaTeX模版（2022届，2019年9月版规范）。

## 依赖环境

- TeX Live 2020及以上，或MikTeX2020及以上

  

## 使用方法
- Windows下：

  1. 运行

     ```cmd
     xelatex seuthesis-2022.ins
     ```

     以生成cls、cfg文件。

  2. 运行

     ```cmd
     ./sample_thesis.bat
     ```

     以编译样例论文。

- Mac下：

  1. 运行

     ```shell
     xelatex seuthesis-2022.ins
     ```

     以生成cls、cfg文件。

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



## TODO

- 用户手册及代码文档尚未完成