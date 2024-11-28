# robosys2024  
ロボットプログラミング用  
  
## 速度計算  
![test](https://github.com/YuMaNaI/robosys2024/actions/workflows/test.yml/badge.svg)  
  
## 使用方法  
kadai1.pyをファイルにコピーする。  
nums1に  
　　　　距離（スペース）時間　を入力する。  
kadai1.pyにchmodコマンドを使用する。  
実行する。  
  
## 使用例  
方法1  
$echo "100 10" | ./kadai1.py  
出力→速さ: 10.0 メートル/秒  
  
方法2  
$echo "100 5" > nums1  
$cat nums1 | ./kadai1.py  
出力→速さ: 20.0 メートル/秒  
  
## 必要なソフトウェア  
- Python  
  - テスト済みバージョン: 3.7〜3.11  
  
## テスト環境  
- Ubuntu 24.04 LTS  
  
## ライセンス  
- このソフトパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます  
- 2024 Yuma Naito  

## 参考  
https://qiita.com/Canard_engineer_c_cpp/items/81ce4e53881138dbf37f  

- このソフトウェアパッケージは，3条項BSDライセンスの下，再頒布および使用が許可されます．
- このパッケージのコードは，下記のスライド（CC-BY-SA 4.0 by Ryuichi Ueda）のものを，本人の許可を得て自身の著作としたものです．
    - [ryuichiueda/my_slides robosys_2024](https://github.com/ryuichiueda/my_slides/tree/master/robosys_2024)
