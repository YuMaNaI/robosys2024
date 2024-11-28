#!/bin/bash -xv

# エラーメッセージを表示する関数
ng () {
    echo "${1}行目が違うよ"
    res=1
}

# 初期化（成功状態）
res=0

### TEST 1: 正常系テスト ###
out=$(echo -e "100\n10" | ./speed_calculator.sh) # 距離100、時間10を入力
[ "${out}" = "速さ: 10.00 メートル/秒" ] || ng "$LINENO"

### TEST 2: 時間が0の異常系テスト ###
out=$(echo -e "100\n0" | ./speed_calculator.sh)  # 距離100、時間0を入力
[ "$?" = 1 ] || ng "$LINENO"                    # 終了ステータスが1（エラー）であることを確認
[ "${out}" = "エラー: 時間が0秒の場合、速さは計算できません。" ] || ng "$LINENO"

### TEST 3: 無効な入力の異常系テスト ###
out=$(echo -e "abc\n10" | ./speed_calculator.sh) # 無効な入力を渡す
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "エラー: 無効な入力です。" ] || ng "$LINENO"

### TEST 4: 入力が空の異常系テスト ###
out=$(echo -e "\n" | ./speed_calculator.sh)     # 空の入力を渡す
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "エラー: 入力が空です。" ] || ng "$LINENO"

### TEST 5: 負の距離（異常系の境界テスト） ###
out=$(echo -e "-100\n10" | ./speed_calculator.sh)
[ "$?" = 1 ] || ng "$LINENO"
[ "${out}" = "エラー: 距離は正の値を入力してください。" ] || ng "$LINENO"

### 結果の確認 ###
[ "${res}" = 0 ] && echo "OK"
exit $res
