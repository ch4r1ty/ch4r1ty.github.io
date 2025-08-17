# 🚀 快速启动指南

欢迎使用 ch4r1ty's Blog！这个指南将帮助你快速上手。

## 📋 前置要求

确保你的系统已安装：
- [Node.js](https://nodejs.org/) (版本 14.x 或更高)
- [Git](https://git-scm.com/)
- [npm](https://www.npmjs.com/) (通常随 Node.js 一起安装)

## ⚡ 快速开始

### 1. 克隆项目
```bash
git clone https://github.com/ch4r1ty/ch4r1ty.github.io.git
cd ch4r1ty.github.io
```

### 2. 安装依赖
```bash
npm install
```

### 3. 本地预览
```bash
npm start
```
然后在浏览器中访问 `http://localhost:4000` 查看博客。

### 4. 生成静态文件
```bash
npm run build
```

### 5. 部署到 GitHub Pages
```bash
npm run deploy
```

## 🎯 常用命令

| 命令 | 说明 | 简写 |
|------|------|------|
| `npm start` | 启动本地服务器 | - |
| `npm run build` | 生成静态文件 | - |
| `npm run deploy` | 部署到 GitHub Pages | - |
| `npm run clean` | 清理缓存 | - |
| `npm run new` | 创建新文章 | - |

## 📝 创建新文章

### 使用 npm 脚本
```bash
npm run new "文章标题"
```

### 使用 Hexo CLI
```bash
npx hexo new "文章标题"
```

### 手动创建
在 `source/_posts/` 目录下创建 `.md` 文件，格式如下：

```markdown
---
title: 文章标题
date: 2024-01-01 12:00:00
tags: [标签1, 标签2]
categories: [分类]
---

文章内容...
```

## 🎨 自定义配置

### 修改个人信息
编辑 `_config.yml` 文件中的以下部分：
- `title`: 博客标题
- `subtitle`: 博客副标题
- `description`: 博客描述
- `author`: 作者名称
- `url`: 博客地址

### 修改主题
当前使用 Cactus Dark 主题，如需更换：
1. 安装新主题：`npm install hexo-theme-主题名`
2. 在 `_config.yml` 中修改 `theme` 字段

### 添加插件
```bash
npm install hexo-plugin-name
```

然后在 `_config.yml` 的 `plugins` 部分添加插件名。

## 🔧 故障排除

### 常见问题

**Q: 本地预览时出现错误**
A: 尝试清理缓存：`npm run clean`，然后重新启动

**Q: 部署失败**
A: 检查 Git 配置和 GitHub 仓库权限

**Q: 样式显示异常**
A: 确保 CSS 文件路径正确，检查浏览器控制台错误

**Q: 文章不显示**
A: 检查文章格式和文件位置，确保在 `source/_posts/` 目录下

### 获取帮助
- 查看 [Hexo 官方文档](https://hexo.io/docs/)
- 检查 [GitHub Issues](https://github.com/ch4r1ty/ch4r1ty.github.io/issues)
- 查看项目 [README.md](README.md)

## 📚 进阶功能

### 添加评论系统
1. 注册 [Disqus](https://disqus.com/) 账号
2. 在 `_config.yml` 中配置 `disqus_shortname`

### 添加统计
1. 注册 [Google Analytics](https://analytics.google.com/) 账号
2. 在 `_config.yml` 中配置 `google_analytics`

### 自定义域名
1. 在域名提供商处添加 CNAME 记录
2. 在 `source/` 目录下创建 `CNAME` 文件，内容为你的域名

## 🚀 自动化部署

使用提供的部署脚本：
```bash
# 正常部署
./deploy.sh

# 清理缓存后部署
./deploy.sh -c

# 查看帮助
./deploy.sh -h
```

## 📞 联系支持

- **GitHub**: [@ch4r1ty](https://github.com/ch4r1ty)
- **博客**: [ch4r1ty.github.io](https://ch4r1ty.github.io)
- **问题反馈**: [创建 Issue](https://github.com/ch4r1ty/ch4r1ty.github.io/issues/new)

---

🎉 恭喜！你现在已经掌握了使用这个博客的基本方法。开始创作你的第一篇博客文章吧！ 