#!/bin/sh

# 复制项目的文件到对应docker路径，便于一键生成镜像。
usage() {
	echo "Usage: sh copy.sh"
	exit 1
}


# copy sql
echo "begin copy sql "
cp ../sql/ry_20240629.sql ./mysql/db
cp ../sql/ry_config_20240902.sql ./mysql/db

# copy html
echo "begin copy html "
cp -r ../sisyphus-ui/dist/** ./nginx/html/dist


# copy jar
echo "begin copy sisyphus-gateway "
cp ../sisyphus-gateway/target/sisyphus-gateway.jar ./ruoyi/gateway/jar

echo "begin copy sisyphus-auth "
cp ../sisyphus-auth/target/sisyphus-auth.jar ./ruoyi/auth/jar

echo "begin copy sisyphus-visual "
cp ../sisyphus-visual/sisyphus-monitor/target/sisyphus-visual-monitor.jar  ./ruoyi/visual/monitor/jar

echo "begin copy sisyphus-modules-system "
cp ../sisyphus-modules/sisyphus-system/target/sisyphus-modules-system.jar ./ruoyi/modules/system/jar

echo "begin copy sisyphus-modules-file "
cp ../sisyphus-modules/sisyphus-file/target/sisyphus-modules-file.jar ./ruoyi/modules/file/jar

echo "begin copy sisyphus-modules-job "
cp ../sisyphus-modules/sisyphus-job/target/sisyphus-modules-job.jar ./ruoyi/modules/job/jar

echo "begin copy sisyphus-modules-gen "
cp ../sisyphus-modules/sisyphus-gen/target/sisyphus-modules-gen.jar ./ruoyi/modules/gen/jar

