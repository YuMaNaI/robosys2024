#!/usr/bin/env python3
import sys
from datetime import datetime

def main():
    # 現在の時刻を取得し、秒単位で表現
    current_time = datetime.now()
    current_seconds = current_time.hour * 3600 + current_time.minute * 60 + current_time.second

    # 標準入力から数値を読み込む
    for line in sys.stdin:
        try:
            number = float(line.strip())  # 入力を数値に変換
            result = current_seconds + number  # 現在時刻（秒）を加算
            print(result)
        except ValueError:
            print(f"Invalid input: {line.strip()}", file=sys.stderr)

if __name__ == "__main__":
    main()
