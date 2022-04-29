# 如何使用VSCODE编译本项目

## 贡献者
- 文档&LaTeXmk配置：[haoruilee](https://github.com/haoruilee)
- TeXify配置：[SuikaXhq](https://github.com/SuikaXhq)

## 快速开始

- 安装插件[LaTeX WorkShop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop)
- 需要安装[Perl](https://strawberryperl.com/)才能使用LaTeXmk；若没有Perl，可以使用MikTeX的TeXify进行编译。
- 使用vscode打开本项目根目录
- 打开sample_thesis.tex，左侧会出现花写的TeX插件，文件右上角会出现 *▶︎（Build LaTeX Project）*
  - TeX Live用户：请点击下拉菜单中的Recipe: LaTeXmk
  - MikTeX用户：请点击下拉菜单中的Recipe: TeXify
- 一键build，等待build文件夹中输出编译结果
  - TeXify输出在根目录下

## 配置说明与个性化选项

在开始个性化配置前，请注意：

> 相比于.bat与.sh的编译方式，本项目使用封装更完备的LaTeXmk和TeXify作为编译器，不再需要手动指定编译工具链。

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
        },
        {
            "name": "texify",
            "command": "texify",
            "args": [
                "--pdf",
                "--engine=xetex",
                "--synctex=1",
                "--batch",
                "%DOCFILE%.tex"
            ]
        },
    ],
    //默认使用latexmk编译
    "latex-workshop.latex.recipes": [
        {
            "name": "LaTeXmk",
            "tools": [
                "latexmk"
            ]
        },
        // TeXify编译
        {
            "name": "TeXify",
            "tools": [
                "texify"
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
