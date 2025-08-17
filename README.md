# ch4r1ty's Blog

这是我的个人博客项目，使用 Hexo 6.3.0 静态博客生成器搭建，采用 Cactus Dark 主题。

## 项目结构

```
ch4r1ty.github.io/
├── index.html          # 主页
├── about/              # 关于页面
├── archives/           # 文章归档页面
├── 2023/               # 按年份组织的文章
├── css/                # 样式文件
├── js/                 # JavaScript 文件
├── images/             # 图片资源
├── 404.html           # 404错误页面
└── README.md          # 项目说明文档
```

## 技术栈

- **静态博客生成器**: Hexo 6.3.0
- **主题**: Cactus Dark
- **样式**: CSS3
- **脚本**: JavaScript (jQuery)
- **图标**: Font Awesome

## 功能特性

- 📝 文章管理：支持按日期分类的文章系统
- 🎨 响应式设计：适配各种设备屏幕
- 🔍 搜索功能：支持文章内容搜索
- 📱 移动端优化：良好的移动端体验
- 🌙 深色主题：护眼的深色界面设计

## 本地开发

### 环境要求

- Node.js (推荐 14.x 或更高版本)
- npm 或 yarn

### 安装依赖

```bash
# 安装 Hexo CLI
npm install -g hexo-cli

# 安装项目依赖
npm install
```

### 本地预览

```bash
# 启动本地服务器
hexo server

# 或使用简写
hexo s
```

访问 `http://localhost:4000` 查看博客。

### 生成静态文件

```bash
# 生成静态文件
hexo generate

# 或使用简写
hexo g
```

### 部署

```bash
# 部署到 GitHub Pages
hexo deploy

# 或使用简写
hexo d
```

## 文章管理

### 创建新文章

```bash
hexo new "文章标题"
```

### 文章格式

文章使用 Markdown 格式，支持以下特性：

- 标题层级
- 代码块
- 图片插入
- 链接引用
- 列表和表格

### 文章分类

文章按日期自动分类到对应年份和月份的文件夹中。

## 自定义配置

### 修改个人信息

编辑以下文件中的相关信息：

- `index.html` - 主页信息
- `about/index.html` - 关于页面
- `archives/index.html` - 归档页面

### 修改样式

编辑 `css/style.css` 文件来自定义样式。

### 修改脚本

编辑 `js/main.js` 和 `js/search.js` 文件来自定义功能。

## 部署到 GitHub Pages

1. 确保你的仓库名为 `ch4r1ty.github.io`
2. 将生成的静态文件推送到 `main` 分支
3. 在仓库设置中启用 GitHub Pages
4. 选择 `main` 分支作为源

## 维护和更新

### 定期更新

- 更新 Hexo 版本
- 更新主题版本
- 检查依赖包的安全性

### 备份

- 定期备份文章内容
- 备份配置文件
- 备份自定义样式和脚本

## 联系方式

- **GitHub**: [@ch4r1ty](https://github.com/ch4r1ty)
- **博客**: [ch4r1ty.github.io](https://ch4r1ty.github.io)

## 许可证

本项目采用 MIT 许可证。详见 [LICENSE](LICENSE) 文件。

## 致谢

- [Hexo](https://hexo.io/) - 静态博客生成器
- [Cactus Dark](https://github.com/probberechts/cactus-dark) - 博客主题
- [Font Awesome](https://fontawesome.com/) - 图标库

---

如果这个项目对你有帮助，请给个 ⭐️ 支持一下！ 