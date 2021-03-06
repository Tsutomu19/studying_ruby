6.5正規表現オブジェクトについてもっと詳しく

正規表現オブジェクトを作成する様々な方法

//を使う方法以外もある
一つはRegexp.newの引数にパターンの文字列をわたす方法

Regexp.new("\d{3}-\d{4}")


もう一つは%を使う


/http:\/\/example\.com/

%r!http://example\.com!


6.5.2 case文で正規表現を使う

正規表現はcase文のwhen節で使うこともできます


text = '03-1234-5678'
case text
when /^\d{3}-\d{4}$/
    puts '郵便番号です'
end

6.5.3　正規表現オブジェクト作成時のオプション

'HELLO'=~/hello/i
=>0

regexp = Regexp.new("hello",Regexp::IGNORECASE)
'HELLO' =~ regexp
# =>0




6.5.4 組み込み変数でマッチの結果を取得する

Rubyには$で始まる特殊な変数が存在します
=~演算子やmatchメソッドを使うといくつかの組み込み変数にマッチした結果が代入されます


text = '私の誕生日は1977年7月17日です。'

text = /(\d+)年(\d+)月(\d+)日/

$~

$&

$1
$2
$3

$+

6.5.5. Regexp.last_matchでマッチの結果を取得する

Regexp.last_matchメソッドを使うと先ほど説明した組み込み変数のように=~演算子などで最後にマッチした結果を取得できます


6.5.6.組み込み変数を書き換えないmatch?メソッド

