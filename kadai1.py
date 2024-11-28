#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Yuma Naito
# SPDX-License-Identifier: BSD-3-Clause
import sys

def main():
    # 標準入力からデータを受け取る
    input_data = sys.stdin.read().strip()
    
    # 距離と時間をスペースで分割し、浮動小数点数に変換
    distance, time = map(float, input_data.split())
    
    # 速さを計算
    speed = distance / time
    
    # 速さを標準出力に表示
    print(f"速さ: {speed} メートル/秒")

if __name__ == "__main__":
    main()
