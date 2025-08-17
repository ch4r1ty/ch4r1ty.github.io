#!/bin/bash

# ch4r1ty's Blog 部署脚本
# 使用方法: ./deploy.sh [选项]
# 选项:
#   -c, --clean     清理缓存后部署
#   -h, --help      显示帮助信息

set -e

# 颜色定义
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# 日志函数
log_info() {
    echo -e "${BLUE}[INFO]${NC} $1"
}

log_success() {
    echo -e "${GREEN}[SUCCESS]${NC} $1"
}

log_warning() {
    echo -e "${YELLOW}[WARNING]${NC} $1"
}

log_error() {
    echo -e "${RED}[ERROR]${NC} $1"
}

# 显示帮助信息
show_help() {
    echo "ch4r1ty's Blog 部署脚本"
    echo ""
    echo "使用方法: $0 [选项]"
    echo ""
    echo "选项:"
    echo "  -c, --clean     清理缓存后部署"
    echo "  -h, --help      显示帮助信息"
    echo ""
    echo "示例:"
    echo "  $0              # 正常部署"
    echo "  $0 -c           # 清理缓存后部署"
    echo "  $0 --help       # 显示帮助"
}

# 检查依赖
check_dependencies() {
    log_info "检查依赖..."
    
    if ! command -v node &> /dev/null; then
        log_error "Node.js 未安装，请先安装 Node.js"
        exit 1
    fi
    
    if ! command -v npm &> /dev/null; then
        log_error "npm 未安装，请先安装 npm"
        exit 1
    fi
    
    if ! command -v git &> /dev/null; then
        log_error "Git 未安装，请先安装 Git"
        exit 1
    fi
    
    log_success "依赖检查完成"
}

# 安装依赖
install_dependencies() {
    log_info "安装项目依赖..."
    
    if [ -f "package.json" ]; then
        npm install
        log_success "依赖安装完成"
    else
        log_warning "未找到 package.json 文件，跳过依赖安装"
    fi
}

# 清理缓存
clean_cache() {
    log_info "清理缓存..."
    
    if command -v hexo &> /dev/null; then
        hexo clean
        log_success "缓存清理完成"
    else
        log_warning "Hexo CLI 未安装，跳过缓存清理"
    fi
}

# 生成静态文件
generate_site() {
    log_info "生成静态文件..."
    
    if command -v hexo &> /dev/null; then
        hexo generate
        log_success "静态文件生成完成"
    else
        log_warning "Hexo CLI 未安装，尝试使用 npm 脚本..."
        npm run build
        log_success "静态文件生成完成"
    fi
}

# 部署到 GitHub Pages
deploy_to_github() {
    log_info "部署到 GitHub Pages..."
    
    if command -v hexo &> /dev/null; then
        hexo deploy
        log_success "部署完成"
    else
        log_warning "Hexo CLI 未安装，尝试使用 npm 脚本..."
        npm run deploy
        log_success "部署完成"
    fi
}

# 检查 Git 状态
check_git_status() {
    log_info "检查 Git 状态..."
    
    if [ -d ".git" ]; then
        git status --porcelain
        log_success "Git 状态检查完成"
    else
        log_warning "当前目录不是 Git 仓库"
    fi
}

# 主函数
main() {
    local clean_cache_flag=false
    
    # 解析命令行参数
    while [[ $# -gt 0 ]]; do
        case $1 in
            -c|--clean)
                clean_cache_flag=true
                shift
                ;;
            -h|--help)
                show_help
                exit 0
                ;;
            *)
                log_error "未知选项: $1"
                show_help
                exit 1
                ;;
        esac
    done
    
    log_info "开始部署 ch4r1ty's Blog..."
    
    # 检查依赖
    check_dependencies
    
    # 安装依赖
    install_dependencies
    
    # 如果需要，清理缓存
    if [ "$clean_cache_flag" = true ]; then
        clean_cache
    fi
    
    # 生成静态文件
    generate_site
    
    # 部署到 GitHub Pages
    deploy_to_github
    
    # 检查 Git 状态
    check_git_status
    
    log_success "部署完成！"
    log_info "访问 https://ch4r1ty.github.io 查看博客"
}

# 运行主函数
main "$@" 