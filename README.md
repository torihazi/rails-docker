# 構築方法
1. ローカル上に任意のディレクトリを作成し、移動する　
1. 移動先のディレクトリで `git clone https://github.com/torihazi/rails-docker.git`
1. 作成されたディレクトリに移動する
1. `docker-compose build`を実行し、docker イメージを作成
1. `docker-compose run web rake db:create`を実行し、データベースを作成する
1. `docker-compose run web rails db:migrate`を実行し、マイグレーションを実行する
1. `docker-compose up web`を実行する
1. http://localhost:3000にアクセスをして**New task**という文字が表示されたら構築完了

### 前提条件
- Docker Desktopがインストール済みであること
- Docker hubにアカウント登録済みであること
- (本構築に使用するエディタはVScodeになります。)

## 1.ローカル上に任意のディレクトリを作成し、移動する

```
# ls -l ~/Document/study
# mkdir -p ~/Document/study
# cd ~/Document/study
```

## 2.  git clone を実行する
```
# git clone https://github.com/torihazi/rails-docker.git
```

## 3. 作成されたディレクトリに移動する
```
# cd rails-docker
```

## 4. dockerイメージをビルドする
```
# docker-compose build
```

## 5. データベースを作成する
```
# docker-compose run web rake db:create
```

## 6. マイグレーションを実行する
```
# docker-compose run web rails db:migrate
```

## 7. コンテナを立ち上げる 
```
# docker-compose up web
```

## 8 http://localhost:3000にアクセスをして、表示がされたら成功