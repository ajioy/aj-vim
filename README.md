aj-vim
=======================


> VERSION: 1.0

> LAST_UPDATE_TIME: 2019-07-28

> REFERENCE: k-vim/ https://github.com/wklken/k-vim


# Screenshots

- **[ajcolor colorscheme(ajioy自定义配色)](https://github.com/ajioy/ajcolor)**
![tmuximg](https://raw.githubusercontent.com/ajioy/storage/master/vim_ajcolor.png)

- **molokai colorscheme**
![tmuximg](https://raw.githubusercontent.com/ajioy/storage/master/vim_molokai.png)

---------------------------------


# Install

### **1. clone to local**

```
git clone https://github.com/ajioy/aj-vim.git
```


### **2. install dependencies**


##### **2.1 dependence # ctags, ag(the_silver_searcher)**

```
# debian/ubuntu
sudo apt-get install ctags
sudo apt-get install build-essential cmake python-dev  #编译YCM自动补全插件依赖
sudo apt-get install silversearcher-ag

# centos
sudo yum install python-devel.x86_64
sudo yum groupinstall 'Development Tools'
sudo rpm -Uvh https://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm
sudo yum install the_silver_searcher
sudo yum install cmake

# mac
brew install ctags
brew install the_silver_searcher
```

##### **2.2 python**

```
sudo pip install flake8 yapf jedi
```

##### **2.3 javascript(you can ignore)**

```
# 安装jshint和jslint,用于javascript语法检查
# 需要nodejs支持,各个系统安装见文档 https://github.com/joyent/node/wiki/Installing-Node.js-via-package-manager

# ubuntu
sudo apt-get install nodejs npm
sudo npm install -g jslint
sudo npm install jshint -g
sudo npm install -g eslint eslint-plugin-standard eslint-plugin-promise eslint-config-standard eslint-plugin-import eslint-plugin-node eslint-plugin-html babel-eslint

# mac
brew install node
npm install jshint -g
npm install jslint -g
npm install -g eslint eslint-plugin-standard eslint-plugin-promise eslint-config-standard eslint-plugin-import eslint-plugin-node eslint-plugin-html babel-eslint
```


### **3. install**

```
进入目录, 执行安装
# 注意原先装过的童鞋, 重装时，不要到~/.vim下执行(这是软连接指向aj-vim真是目录)，必须到aj-vim原生目录执行
# 会进入安装插件的列表，一安装是从github clone的，完全取决于网速, 之后会自动编译 YCM, 编译失败的话需要手动编译, 有问题见YCM文档
# 如果发现有插件安装失败 可以进入vim, 执行`:PlugInstall'

cd aj-vim/
sh -x install.sh
```

------------------------

# Uninstall(Remove)

```
cd ~ && rm -rf .vim .vimrc .vimrc.bundles && cd -
```

---------------------------------

# FAQ

详见 [wiki](https://github.com/ajioy/aj-vim/wiki) 以及  [issues](https://github.com/ajioy/aj-vim/issues)


------------------------

# Plugins

### install plugins group

编辑vimrc.bundles中

```
" more options: ['json', 'nginx', 'golang', 'ruby', 'less', 'json', ]
let g:bundle_groups=['python', 'javascript', 'markdown', 'html', 'css', 'tmux', 'beta']
```

选定集合后, 使用插件管理工具进行安装/更新

### **Plugin Manager**

使用 [vim-plug](https://github.com/junegunn/vim-plug) 管理插件

`vim-plug` 常见问题: [vim-plug faq](https://github.com/junegunn/vim-plug/wiki/faq) / [YCM timeout](https://github.com/junegunn/vim-plug/wiki/faq#youcompleteme-timeout)
／[YCM 国人在国内做的镜像](https://github.com/LooEv/A-bridge-to-YouCompleteMe)

管理插件的命令

```
:PlugInstall     install                      安装插件
:PlugUpdate      install or update            更新插件
:PlugClean       remove plugin not in list    删除本地无用插件
:PlugUpgrade     Upgrade vim-plug itself      升级本身
:PlugStatus      Check the status of plugins  查看插件状态
```

### **Plugin List**
#### navigation
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [scrooloose/nerdtree](https://github.com/scrooloose/nerdtree)                                       | [x] 目录树，文件及目录管理，支持创建、修改、删除节点                                              |
| 2    | [jistr/vim-nerdtree-tabs](https://github.com/jistr/vim-nerdtree-tabs)                               | [x] 增强目录树，与之成套，保持目录树状态、优化tab标题                                             |
| 3    | [danro/rename.vim](https://github.com/danro/rename.vim)                                             | [-] 在Vim中为文件重命名                                                                           |
| 4    | [pbrisbin/vim-mkdir](https://github.com/pbrisbin/vim-mkdir)                                         | [-] 创建不存在的目录                                                                              |
| 5    | [mhinz/vim-startify](https://github.com/mhinz/vim-startify)                                         | [x] 显示最近打开过的文件MRU                                                                       |
| 6    | [vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)                               | [x] 状态栏增强                                                                                    |
| 7    | [vim-airline/vim-airline-themes](https://github.com/vim-airline/vim-airline-themes)                 | [x] 状态栏主题配色                                                                                |
| 8    | [Lokaltog/vim-easymotion](https://github.com/Lokaltog/vim-easymotion)                               | [-] 文件中跳转，更高效的移动                                                                      |
| 9    | [unblevable/quick-scope](https://github.com/unblevable/quick-scope)                                 | [-] 更高效的行内移动, f/F/t/T, 才触发                                                             |
| 10   | [kshenoy/vim-signature](https://github.com/kshenoy/vim-signature)                                   | [x] 显示marks - 方便自己进行标记和跳转                                                            |
| 11   | [lfv89/vim-interestingwords](https://github.com/lfv89/vim-interestingwords)                         | [-] 高亮多个单词，可展示不同颜色                                                                  |
| 12   | [itchyny/vim-cursorword](https://github.com/itchyny/vim-cursorword)                                 | [x] 显示光标下单词下划线，当前buffer内所有
| 13   | [terryma/vim-smooth-scroll](https://github.com/terryma/vim-smooth-scroll)                           | [x] 翻页更平滑流畅                                                                                |
| 14   | [vim-ctrlspace/vim-ctrlspace](https://github.com/vim-ctrlspace/vim-ctrlspace)                       | [-] buffer管理，工作空间管理                                                                      |
| 15   | [christoomey/vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator)                 | [x] For tmux navigator Ctrl-hjkl                                                                  |

#### find and replace
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [Yggdroot/LeaderF](https://github.com/Yggdroot/LeaderF)                                             | [x] 模糊查找，文件列表、函数列表、buffer列表、tag列表                                             |
| 2    | [dyng/ctrlsf.vim](https://github.com/dyng/ctrlsf.vim)                                               | [x] 全局关键字搜索，展示上下文，依赖ag/rg/ack/                                                    |
| 3    | [brooth/far.vim](https://github.com/brooth/far.vim)                                                 | [x] 全局查找替换，可批量撤消                                                                      |
| 4    | [haya14busa/incsearch.vim](https://github.com/haya14busa/incsearch.vim)                             | [-] 增强当前文件搜索/search                                                                       |

#### auto complete
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [Valloric/YouCompleteMe](https://github.com/Valloric/YouCompleteMe)                                 | [x] 最好用的代码补全(c/c++,python)，启动费时，安装复杂                                            |
| 2    | [tenfyzhong/CompleteParameter.vim](https://github.com/tenfyzhong/CompleteParameter.vim)             | [-] 函数参数自动补全                                                                              |
| 3    | [SirVer/ultisnips](https://github.com/SirVer/ultisnips)                                             | [x] 代码片段快速插入，if/for/while...etc                                                          |
| 4    | [honza/vim-snippets](https://github.com/honza/vim-snippets)                                         | [x] 代码片段资源，需要学习，依赖ultisnips                                                         |
| 5    | [ludovicchabant/vim-gutentags](https://github.com/ludovicchabant/vim-gutentags)                     | [x] 自动生成并维护tags                                                                            |
| 6    | [Raimondi/delimitMate](https://github.com/Raimondi/delimitMate)                                     | [x] 自动补全单引号，双引号等                                                                      |

#### universal
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [terryma/vim-expand-region](https://github.com/terryma/vim-expand-region)                           | [x] 扩展选中区域                                                                                  |
| 2    | [terryma/vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors)                     | [x] 多光标选中编辑                                                                                |
| 3    | [tpope/vim-repeat](https://github.com/tpope/vim-repeat)                                             | [x] 重复上一次操作，加强surround功能                                                              |
| 4    | [tpope/vim-surround](https://github.com/tpope/vim-surround)                                         | [x] 快速的删除、修改和添加 括号、引号、XML标签等等                                                |
| 5    | [junegunn/vim-easy-align](https://github.com/junegunn/vim-easy-align)                               | [x] 对齐赋值语句                                                                                  |
| 6    | [godlygeek/tabular](https://github.com/godlygeek/tabular)                                           | [x] 快速对齐，排版                                                                                |
| 7    | [kien/rainbow_parentheses.vim](https://github.com/kien/rainbow_parentheses.vim)                     | [-] 括号显示增强，缤纷多彩                                                                        |
| 8    | [sjl/gundo.vim](https://github.com/sjl/gundo.vim)                                                   | [-] a Vim plugin to visualize your Vim undo tree                                                  |

#### text object
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [kana/vim-textobj-user](https://github.com/kana/vim-textobj-user)                                   | [-] 支持自定义文本对象                                                                            |
| 2    | [kana/vim-textobj-line](https://github.com/kana/vim-textobj-line)                                   | [-] 行文本对象， l   dal yal cil                                                              |
| 3    | [kana/vim-textobj-entire](https://github.com/kana/vim-textobj-entire)                               | [-] 文件文本对象，  e   dae yae cie                                                             |
| 4    | [kana/vim-textobj-indent](https://github.com/kana/vim-textobj-indent)                               | [-] 增加缩进文本对象， i   dai yai cii - 相同缩进属于同一块                                        |

#### git
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [tpope/vim-fugitive](https://github.com/tpope/vim-fugitive)                                         | [x] Git包装器，在vim编辑器中完成git操作                                                           |
| 2    | [airblade/vim-gitgutter](https://github.com/airblade/vim-gitgutter)                                 | [x] shows a git diff in the gutter (sign column) and stages/undoes hunks                          |
| 3    | [Xuyuanp/nerdtree-git-plugin](https://github.com/Xuyuanp/nerdtree-git-plugin)                       | [-] nerdtree显示git状态                                                                           |

#### language modules
##### common
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [majutsushi/tagbar](https://github.com/majutsushi/tagbar)                                           | [x] 变量及函数列表，体验比taglist更好                                                             |
| 2    | [w0rp/ale](https://github.com/w0rp/ale)                                                             | [x] 异步语法检查                                                                                  |
| 3    | [scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)                             | [x] 快速注释                                                                                      |
| 4    | [thinca/vim-quickrun](https://github.com/thinca/vim-quickrun)                                       | [x] 快速执行当前文件, 例如.py/.rb/.sh等等, 用于快速验证一些代码实现                               |
| 5    | [skywind3000/asyncrun.vim](https://github.com/skywind3000/asyncrun.vim)                             | [-] 异步运行代码输出结果，编译c/c++不影响代码编辑                                                 |

##### python
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [hynek/vim-python-pep8-indent](https://github.com/hynek/vim-python-pep8-indent)                     | [x] python PEP8缩进                                                                               |
| 2    | [fisadev/vim-isort](https://github.com/fisadev/vim-isort)                                           | [-] sort python imports                                                                           |
| 3    | [davidhalter/jedi-vim](https://github.com/davidhalter/jedi-vim)                                     | [x] python补全第三方库，结合ycm使用，如果是c, 将其取消                                            |
| 4    | [Yggdroot/indentLine](https://github.com/Yggdroot/indentLine)                                       | [x] 缩进竖线                                                                                      |

##### c/c++
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    |                                                                                                     | todo                                                                                              |

##### html/js/css/json
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | ['mattn/emmet-vim](https://github.com/mattn/emmet-vim)                                              | [x] html语法补全                                                                                  |
| 2    | [vim-scripts/matchit.zip](https://github.com/vim-scripts/matchit.zip)                               | [-] 用%成对标签跳转                                                                               |
| 3    | [Glench/Vim-Jinja2-Syntax](https://github.com/Glench/Vim-Jinja2-Syntax)                             | [x] jinja语法                                                                                     |
| 4    | [docunext/closetag.vim](https://github.com/docunext/closetag.vim)                                   | [-] 自动补全html/xml标签                                                                          |
| 5    | [othree/yajs.vim](https://github.com/othree/yajs.vim)                                               | [-] Yet Another JavaScript Syntax                                                                 |
| 6    | [pangloss/vim-javascript](https://github.com/pangloss/vim-javascript)                               | [x] JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation. |
| 7    | [othree/javascript-libraries-syntax.vim](https://github.com/othree/javascript-libraries-syntax.vim) | [x] Syntax file for JavaScript libraries，Vue，jQuery...etc                                       |
| 8    | [kchmck/vim-coffee-script](https://github.com/kchmck/vim-coffee-script)                             | [-] coffee script                                                                                 |
| 9    | [lilydjwg/colorizer](https://github.com/lilydjwg/colorizer)                                         | [-] 显示十六进制颜色                                                                              |
| 10   | [groenewege/vim-less](https://github.com/groenewege/vim-less)                                       | [-] less syntax                                                                                   |
| 11   | [elzr/vim-json](https://github.com/elzr/vim-json)                                                   | [x] json syntax                                                                                   |

##### markdown
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown)                               | [x] markdown语法                                                                                  |
| 2    | [suan/vim-instant-markdown](https://github.com/suan/vim-instant-markdown)                           | [-] markdown preview                                                                              |
| 3    | [iamcco/markdown-preview.vim](https://github.com/iamcco/markdown-preview.vim)                       | [x] markdown实时预览，支持浏览器同步滚屏
| 4    | [dhruvasagar/vim-table-mode](https://github.com/dhruvasagar/vim-table-mode)                         | [x] markdown table表格制作、排版                                                                  |
| 5    | [mzlogin/vim-markdown-toc](https://github.com/mzlogin/vim-markdown-toc)                             | [-] 生成markdown toc                                                                              |

##### ruby
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [vim-ruby/vim-ruby](https://github.com/vim-ruby/vim-ruby)                                           | [-] ruby语法                                                                                      |
| 2    | [tpope/vim-endwise](https://github.com/tpope/vim-endwise)                                           | [-] 自动补全end                                                                                   |
| 3    | [nelstrom/vim-textobj-rubyblock](https://github.com/nelstrom/vim-textobj-rubyblock)                 | [-] ruby文本对象                                                                                  |

##### linux shell
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [Shougo/vimshell.vim](https://github.com/Shougo/vimshell.vim)                                       | [-] shell script                                                                                  |

#### color scheme
| 序号 | 插件名                                                                                              | 功能(建议 必选[x] 可选[-])                                                                        |
| -    | ---                                                                                                 | ------                                                                                            |
| 1    | [vim-scripts/CSApprox](https://github.com/vim-scripts/CSApprox)                                     | [x] vim terminal配色与gui配色一致                                                                 |
| 2    | [whatyouhide/vim-gotham](https://github.com/whatyouhide/vim-gotham)                                 | [x] 一款暗黑酷炫配色主题
| 3    | [altercation/vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)             | [-] 经典主题配色，暗色调                                                                          |
| 4    | [tomasr/molokai](https://github.com/tomasr/molokai)                                                 | [-] 经典主题配色                                                                                  |
| 5    | [ajioy/ajcolor](https://github.com/ajioy/ajcolor)                                                   | [x] ajioy主题配色，增强python及c/c++语法                                                          |



------------------------


# Keyboard Shortcuts and Tips

```
1. 以下 ',' 代表<leader>

2. 退出vim后，内容显示在终端屏幕, 可以用于查看和复制, 如果不需要可以关掉
    好处：误删什么的，如果以前屏幕打开，可以找回....惨痛的经历
set t_ti= t_te=
    
3. 可以自己修改vimrc决定是否使用方向键进行上下左右移动，默认关闭。
    强迫自己hjkl，可以注解hjkl  上下左右
map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

4. 上排F功能键
F1 废弃这个键,防止调出系统帮助
F2 set nu/nonu,行号开关，用于鼠标复制代码用
F3 set list/nolist,显示可打印字符开关
F4 set wrap/nowrap,换行开关
F5 set paste/nopaste,粘贴模式paste_mode开关,用于有格式的代码粘贴
F6 syntax on/off,语法开关，关闭语法可以加快大文件的展示
F9 tagbar, 变量及函数列表
F10 quickrun,运行当前文件()

5. 分屏移动
ctrl + j/k/h/l   进行上下左右窗口跳转,不需要ctrl+w+jkhl

6. 搜索
<space> 空格，进入搜索状态
/       同上
,/      去除匹配高亮

(交换了#/* 号键功能, 更符合直觉, 其实是离左手更近)
#       正向查找光标下的词
*       反向查找光标下的词

优化搜索保证结果在屏幕中间

7. tab操作
ctrl+t 新建一个tab

(hjkl)
,th    切第1个tab
,tl    切最后一个tab
,tj    下一个tab
,tk    前一个tab

,tn    下一个tab(next)
,tp    前一个tab(previous)

,td    关闭tab
,te    tabedit
,tm    tabm

,1     切第1个tab
,2     切第2个tab
...
,9     切第9个tab
,0     切最后一个tab

,tt 最近使用两个tab之间切换
(可修改配置位 ctrl+o,  但是ctrl+o/i为系统光标相关快捷键, 故不采用)

8. buffer操作(不建议, 建议使用ctrlspace插件来操作)
[b    前一个buffer
]b    后一个buffer
<-    前一个buffer
->    后一个buffer


9. 按键修改
Y         =y$   复制到行尾
U         =Ctrl-r
,sa       select all,全选
gv        选中并高亮最后一次插入的内容
,v        选中段落
kj        代替<Esc>，不用到角落去按esc了，注意要按快并且连续一点(ctrl+[也是ESC)

,q     :q，退出vim
,w     :w, 保存当前文件

ctrl+n    相对/绝对行号切换
<enter>   normal模式下回车选中当前项

10. 细节优化:
    1. ^$ 修改成HL , 更方便在同行移动
    2. ; 修改成 : ，一键进入命令行模式，不需要按shift
    3. 命令行模式 ctrl+a/e 到开始结尾
    4. <和> 代码缩进后自动再次选中, 方便连续多次缩进, esc退出
    5. 对py文件，保存自动去行尾空白，打开自动加行首代码
    6. 'w!!'强制保存, 即使readonly
    7. 去掉错误输入提示
    8. 交换\`和', '能跳转到准确行列位置
    9. python/ruby 等, 保存时自动去行尾空白
    10. 统一所有分屏打开的操作位v/s[nerdtree/ctrlspace] (特殊ctrlp ctrl+v/x)
    11. ',zz' 代码折叠toggle
    12. python使用"""添加docstring会自动补全三引号
    13. Python使用#进行注释时, 自动缩进
    14. 搜索后经常用:nohl消除高亮，使用频繁，map到<BackSpace>即可消除
    
11. LeaderF：
,ll     递归当前目录所有文件，注意，.root/.svn/.git所在目录
,lf     函数列表
,lb     buffer列表
,lt     tab列表
    
12. Ctrlsf:
,sp     搜索光标所在关键字
\       搜索光标所在
,f      normal手动输入关键字进行搜索，选中关键字后加入命令行，按Enter搜索
,F      选中关键字后自动搜索
,o      打开搜索结果面板
,t      切换打开/关闭搜索结果面板


13. Far：
,rp     :Far **/*.py 搜索替换
,rd     :Fardo   执行
,ro     :Farundo 撤消

14. Youcompleteme
,jd     跳到函数定义或文件
,gd     GoToDeclaration
,jo     跳至include文件
,jf     Automatically fix certain errors (FixIt)

15. Nerdcommenter
,cc 注释
,cu 解除注释
    
16. vim-Surround
cs"'     "Hello world!" => 'Hello world!'
cs'<q>   'Hello world!' => <q>Hello world!</q>
ds"      "Hello world!" => Hello world!
ysiw]    [Hello] world! (iw is a text object)
yssb or yss)    ({ Hello } world!)
ysiw<em>    <em>Hello</em> world!
    
17. vim-easy-align
vipga=      选中一段后按=对齐
gaip=       选中后按=对齐

=           Around the 1st occurrences
2=          Around the 2nd occurrences
3=          Around 3rd operators with =
*=          Around all occurrences
**=         Left/Right alternating alignment around all occurrences
<Enter>     Switching between left/right/center alignment modes
<Space>     Around 1st whitespaces
2<Space>    Around 2nd whitespaces
-<Space>    Around the last whitespaces
-2<Space>   Around the 2nd to last whitespaces
:           Around 1st colon
<Right>:    Around 1st colon
<Enter>=    Right alignment around 1st =
<Enter>**=  Right-left alternating around =

18. vim-expand-region
v       扩大选中区
V       缩小选中区

19. vim-multiple-cursors 
,ctrl+m  多选同一个关键字向后
,ctrl+p  多选同一个关键字向前
,ctrl+x  跳过本次多选

20. Nerdtree
,n      切换目录树显示与隐藏
,v      找到当前文件在目录树的位置

21. airline
->      移动至右边的buffer
<=      移动至左边的buffer

22. interestingwords
,k      开启或关闭当前高亮
,K      关闭当前高亮

23. CompleteParameter
ctrl+;  跳到下一个参数（注意先要确认填好当前函数参数才能去下一个）
ctrl+'  跳到上一个参数

24. Jedi-vim
,d      跳至函数定义或文件
,g      同上
,r      重命名参数
K       查看文档

25. vim-easymotion
,,w/b   跳到当前光标前后的位置
,,s     搜索跳转，光标前后位置
,,h/j/k/l 当前行、列搜索跳转
,,f/F/t/T 当前光标行内前后搜索跳转
,,.     重复上一次跳转

26. vim-table-mode
,tm     table mode 开关
,tt     使用g:table_mode_delimiter定义的分隔符插入表格
,T      使用用户输入的分隔符插入表格
,tr     重新对齐
[|      移动到前一个表格
]|      移动到下一个表格
{|      移动到上面一个表格
}|      移动到下面一个表格
||      插入表头边框
,tdd    删除一行
,tdc    删除一列
```

------------------------

