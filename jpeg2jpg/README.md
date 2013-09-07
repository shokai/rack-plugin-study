# Jpeg2Jpg Request Filter

- アプリの前のフィルタの実装例
- Sinatraアプリにリクエストが行く前に、リクエストパスの拡張子が.jpegだったら.jpgに書きなおすRackプラグイン


## Run

    % bundle exec rackup config.ru -p 5000

- http://localhost:5000/shokai.jpg
- http://localhost:5000/shokai.jpeg
- http://localhost:5000/shokai.jPEg
- どれも同じ画像が表示されるはず
