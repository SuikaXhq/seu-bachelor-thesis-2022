# 如何使用VSCODE编译本项目

## 快速开始

- 安装插件[LaTeX WorkShop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- 使用vscode打开本项目根目录
- 打开sample_thesis.tex，左侧会出现花写的$TeX$插件，文件右上角会出现 *▶︎（Build LaTeX Project）*
- 一键build，等待build文件夹中输出编译结果

## 配置说明与个性化选项

在开始个性化配置前，请注意：

> 相比于.bat与.sh的编译方式，本项目使用封装更完备的$LaTeXmk$作为编译器，不再需要手动指定编译工具链。

完整的参数说明见[LaTeX WorkShop Wiki](https://github.com/James-Yu/LaTeX-Workshop/wiki/)

设置与说明如下：

```json


{
    //输出文件夹
    "latex-workshop.latex.outDir": "%DIR%/build",
    //不主动重新编译
    "latex-workshop.latex.autoBuild.run": "never",
    //右键增加workshop内容
    "latex-workshop.showContextMenu":true,
    //自动补全开启
    "latex-workshop.intellisense.package.enabled": true,
    //失败弹窗开启
    "latex-workshop.message.error.show": true,
    //取消警告弹窗
    "latex-workshop.message.warning.show": false,
    //工具配置
    "latex-workshop.latex.tools": [
        {
            "name": "xelatex",
            "command": "xelatex",
            "args": [
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "--output-directory=%OUTDIR%",
                "-shell-escape",
                "%DOCFILE%"
            ]
        },
        {
            "name": "latexmk",
            "command": "latexmk",
            "args": [
                "-xelatex",
                "-synctex=1",
                "-interaction=nonstopmode",
                "-file-line-error",
                "-outdir=%OUTDIR%",
                "%DOCFILE%"
            ]
        },
        {
            "name": "bibtex",
            "command": "bibtex",
            "args": [
                "%DOCFILE%" 
            ]
        }
    ],
    //默认使用latexmk编译
    "latex-workshop.latex.recipes": [
        {
            "name": "LaTeXmk",
            "tools": [
                "latexmk"
            ]
        }
    ],
    //在编译失败时清除中间文件
    "latex-workshop.latex.autoClean.run": "onFailed",
    //相比.bat与.sh中的工具链，增加了额外需要清除的中间结果
    "latex-workshop.latex.clean.fileTypes": [
        "*.log",
        "*.aux",
        "*.toc",
        "*.bbl",
        "*.out",
        "*.blg",
        "*.listing",
        "*.synctex.gz",
        "*.fdb_latexmk",
        "*.fls",
        "*.xdv"
    ],
    //默认选择上次的编译工具
    "latex-workshop.latex.recipe.default":"lastUsed",
    //双击正向查找
    "latex-workshop.view.pdf.internal.synctex.keybinding": "double-click"
}
```
