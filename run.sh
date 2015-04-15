#!/bin/sh
mode="dev"
env="dev"
start_prod="npm run forever-start"
start_dev="npm run nodemon-start"
start_test="npm test"

while getopts m:e: OPT
do
    case $OPT in
        m) mode="$OPTARG" ;;
        e) env="$OPTARG"
    esac
done

# 環境変数設定
if [ ${mode} = "prod" ]; then
    export NODE_ENV=production
    export PORT=3000    
elif [ ${mode} = "test" ]; then
    export NODE_ENV=test
    export PORT=3000             
else
    if [ ${env} = "prod" ]; then
        export NODE_ENV=production
        export PORT=3000
    else
        export NODE_ENV=development
        export PORT=3000
    fi
fi

# 起動コマンド
if [ ${mode} = "prod" ]; then
    eval $start_prod
elif [ ${mode} = "test" ]; then
    eval $start_test
else
    eval $start_dev
fi