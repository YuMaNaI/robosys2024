# robosys2024  
ロボットプログラミング用  
  
## 概要  
- このプログラムは速度を計算するプログラムです。  
- 距離と時間を値として入れると速度（メートル/秒）を導出します。
![test](https://github.com/YuMaNaI/robosys2024/actions/workflows/test.yml/badge.svg)  


https://github.com/YuMaNaI/robosys2024/blob/main/test_results.txt   

 
## 使用方法
kadai1.pyというファイルを作る  
```$ vi kadai1.py```

サンプルコード
```
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
```

kadai1.pyと同じ場所でnums1というファイルを作る。  
```$ vi nums1```  

距離（スペース）時間　を入力する。  
例(nums1)   
```100 10```


  
## 実行例  
方法1    
```$ echo "100 10" | ./kadai1.py```  
```10.0 メートル/秒```    
  
方法2  
```$ echo "100 5" > nums1```   
```$ cat nums1 | ./kadai1.py```  
```20.0 メートル/秒```  
  
## 必要なソフトウェア  
- Python  
  - テスト済みバージョン: 3.7〜3.11  
  
## テスト環境  
- Ubuntu 24.04 LTS  


  
## ライセンス  
- このソフトパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます  
- © 2024 Yuma Naito  

## 参考  
https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f  

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）は，本人の許可を得て自身の著作とし、参考にしたものです．
    - [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)
