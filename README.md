# Chaliceデモ

## 初期化

```
$ PROJECTFILE
$ make init 
```

**.env.aws-credentials** が作られるのでアクセスキーとシークレットアクセスキーを書き込んでください。

## デプロイ

```
$ make deploy
```

## 削除

```
$ make delete
```

## パイプラインとスタック
```
# 作成
$ make cf-deploy

# 削除
$ make delete-stack 
```

