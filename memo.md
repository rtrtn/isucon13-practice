# Memo

[isucon13 リポジトリ](https://github.com/isucon/isucon13)
[環境構築リポジトリ](https://github.com/matsuu/cloud-init-isucon/tree/main/isucon13)

## mysql

スロークエリログの設定

```sql
show variables like 'slow_query%';
show variables like 'long%';

set global slow_query_log=1;
set global slow_query_log_file='/tmp/mysql-slow.log';
set global long_query_time=0; # ここは1sにするとスロークエリログ単体で確認しやすい
```

## pprof

```golang
import(
  _ "net/http/pprof"
  "runtime"
)

func Run() {
  // pprof
  runtime.SetBlockProfileRate(1)
  runtime.SetMutexProfileFraction(1)
  go func() {
    log.Fatal(http.ListenAndServe("localhost:6060", nil))
  }()
  // main logic
}
```

## 消すと良いもの

- logger

```golang
  // e.Debug = true
  // e.Logger.SetLevel(log.DEBUG)
  // e.Use(middleware.Logger())
```

## github のログイン

アクセストークンを利用してログインする。

- setting -> Developer Setting からアクセストークンを作成。
- `git config --global credential.helper 'store --file ~/.git_credentials'`
- pull などを行う際にパスワード部分にトークンを入れる
- ついでにvimに変更しておくと幸せ
  - `git config --global core.editor vim`
