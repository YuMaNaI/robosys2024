# robosys2024  
ロボットプログラミング用  
  
## 概要  
- このプログラムは速度を計算するプログラムです。  
- 距離と時間を値として入れると速度（メートル/秒）を導出します。   

## テスト  
[![Test kadai1.py](https://github.com/YuMaNaI/robosys2024/actions/workflows/test.yml/badge.svg)](https://github.com/YuMaNaI/robosys2024/actions/workflows/test.yml)  

 
## 使用方法


サンプルコード
```
#!/usr/bin/python3
# SPDX-FileCopyrightText: 2024 Yuma Naito
# SPDX-License-Identifier: BSD-3-Clause
import sys

def main():
    input_data = sys.stdin.read().strip()
    
    distance, time = map(float, input_data.split())
    
    speed = distance / time
    
    print(f"速さ: {speed} メートル/秒")

if __name__ == "__main__":
    main()
```

サンプルコードと同じ場所でnums1というファイルを作り、距離（スペース）時間　を入力する。  
例(nums1)   
```100 10```  



  
## 実行例  
方法1    
```$ echo "100 10" | ./<ファイル名>```  
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
- このプロジェクトは(https://github.com/YuMaNaI/robosys2024/blob/main/LICENSE) のもとで公開されています。  
- このソフトパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます  
- © 2024 Yuma Naito  


## 参考  
https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f  

- 下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）を，本人の許可を得て自身の著作とし、参考にしたものです．
    - [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)
