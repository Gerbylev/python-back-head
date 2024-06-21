#!/bin/bash
set -e

#
#         Prepare variables
#

#!/bin/bash

# Получаем имя текущей ветки Git
branch=$(git rev-parse --abbrev-ref HEAD)

# Создаем папку version и info.json внутри неё
mkdir -p version
info_file="version/info.json"

# Получаем время создания и hash последнего коммита
timestamp=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
commit_hash=$(git rev-parse HEAD)
commit_author=$(git log -1 --format='%an')

# Создаем содержимое info.json
cat << EOF > $info_file
{
  "branch": "$branch",
  "timestamp": "$timestamp",
  "commit_hash": "$commit_hash",
  "commit_author": "$commit_author"
}
EOF

# Генерируем имя образа Docker
#docker_image="my-docker-registry.com/myapp:$branch"

# Собираем Docker образ
#docker build -t $docker_image .


# Пушим Docker образ в указанный URL
#docker push $docker_image


#
#
#echo Build.SH: $1
#ROOT=$(realpath $(dirname $0))
#BRANCH=$1
#BUILD_DATE=$(date +"%Y-%m-%dT%T")
#BUILD_COMMIT_ID=$(git rev-parse HEAD)
#
###
###         Build the app
###
#
##export DOCKER_BUILDKIT=1
#docker build . -f Dockerfile-for-build \
#              --build-arg USER=$USER \
#              --build-arg UID=$(id -u) \
#              --build-arg GID=$(id -g) \
#              -t eventos-server-build
#echo $HOME
#
#mkdir -p $HOME/.m2 || true
#docker run -v $ROOT:/app -v $HOME/.m2:/home/docker-build/.m2 eventos-server-build mvn clean install -pl api,bot-api
#
#cd ./server
#
#./build.sh $BRANCH
#
#cd ../renderer
#
#./build.sh $BRANCH