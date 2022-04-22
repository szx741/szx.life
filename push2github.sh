cd /home/ubuntu/code/backup_szx_life
# 每次生成静态文件都会重复生成，所以每次都要重新删除
#rm -rf *%*
# 可选，由于镜像点和源站点没有区别，为了区别，我把我的头像文件给替换了，换成黄四郎的“糟了，我成替身了”，这样就能区别两个站点，也算是一个彩蛋了。
cp huangsilang.webp wp-content/uploads/2021/07/huangsilang.webp 
sed -i s/erciyuan4.webp/huangsilang.webp/g `grep -rl erciyuan4.webp --include="*.html" ./`
git add .
# 提交，每次都是随机数
git commit -m "$(date +%Y-%m-%d)"
# 推送到远程仓库，如果有必要的话，可以加个-f强制推送
git push -u github main
