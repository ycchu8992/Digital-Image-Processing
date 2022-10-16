Proj 03_01:
在Matlab中開啟Proj03_01的main.m，並且確保所要處理的影像，在同一個資料夾，
且名稱為Fig0308(a)(fractured_spine).tif。
如果要用別的影像，則只要修改imead中的影像路徑(名稱)即可。
在main.m中，我使用logTransform時，他的參數c我這便是寫成固定的值。
如果想要用其他的c，就只需要改掉line 8給的值就可。
同樣的，在main.m中，我引用 powerlawTransform時，他的gamma值，我是用for來
給不同的值。整個main.m 跑完後，會輸出六張照片。分別是LogTransformation.jpg
以及powerLawWithGamma_{gamma值}.jpg。
雖然在main.m中，大部分用到的parameter都已經寫定了，但如果直接call 
logTransform 或 powerlawTransform 時，parameter就可以任一使用。

Proj 03_02:
在Matlab中開啟Proj03_02的main.m，並且確保所要處理的影像，在同一個資料夾，
且名稱為Fig0308(a)(fractured_spine).tif。如果要用別的影像，則只要修改
imead中的影像路徑(名稱)即可。
在我的Proj03_02中的main.m中，基本上沒有那些特別的都是call 我寫的 imageHist 或
histEqualization。所以使用上直接跑就可。跑完會輸出5張照片，分別是原圖、
原圖的histogram、Histogram equalization transform function、處理後的Image
以及他的histogram。

Proj 03_03~03_04:
在Matlab中開啟此projeect的main.m，並且確保所要處理的影像，在同一個資料夾，
且名稱為Fig.tif。如果要用別的影像，則只要修改imead中的影像路徑(名稱)即可。
在main.m中要注意的是laplacianMask我寫在program中的A和B。此外，與前面兩個
project中不同。這裡不會顯示figure，會直接將影像輸出。
