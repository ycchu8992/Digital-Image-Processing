Proj02-02:

使用MatLab開啟資料夾proj02-02，
確認在MatLab中，當前所在的folder是proj02-02後，
點選main.m然後執行(亦可在command window中輸入main)
執行後會將proj02-02中的Fig221(a).tif影像讀進來[註一]，
隨後在command windows輸入所想要的Intensity Level。
main.m就會在proj02-02中產生reduceToDesireImage.jpg也就是處理過的影像，
並且會在matlab中以figure呈現，並註明其Intensity Level。隨後在command windows
會詢問是否要繼續執行，輸入1，執行題目中的part b的部分，
將原影像從2^0~2^8，依序處理，輸出到proj02-02中，
命名為IntensityReduceToLevel_{reduce的level}.jpg，並且在figure中顯示出來。

[註一]：如果要其他影像作處理，請修改code中第5行imread function中的string
也就是影像在proj02-02中的位置。


Proj02-03:

使用MatLab開啟資料夾proj02-03，
確認在MatLab中，當前所在的folder是proj02-03後，
點選main.m然後執行(亦可在command window中輸入main)
執行後會將proj02-03中的Fig0220(a).tif影像讀進來[註二]，
command window會詢問想要對Image放大還是縮小，輸入1則放大，輸入2則縮小
隨後在command windows輸入所想要的縮放比例。
main.m就會在proj02-03中產生resizeImage_{zoom或shrink，看是執行什麼操作}_{縮放比例}.jpg也就是處理過的影像。
隨後在command windows會詢問是否要繼續執行，輸入1，執行題目中的part b的部分。
因為part b 是有限制縮放比例為10，以及對什麼影像執行，所以不會要求使用者輸入資訊[註三]
main.m就會在proj02-03中產生兩個影像，resizeImage_shrink_to_ten.jpg以及resize_to_origi.jpg
前者是對指定影像縮小10倍後的結果，後者是將小後的影像在放大回原本大小的影像。
並且會在matlab中以figure呈現原始影像和縮小再放大的影像，並註明之。

[註二]：如果要其他影像作處理，請修改code中第5行imread function中的string
也就是影像在proj02-03中的位置。(p.s，如果有修改欲執行的影像，請在執行part b
時，詳閱註三。

[註三]：part b 要求的是對特定影像執行，而此處的code是對最剛開始所選定的影像作處理，
所以如果要執行題目的part b，請參考註二，將處理的影像設定成題目要求的影像所在的位置。


Proj02-04:

使用MatLab開啟資料夾proj02-04，
確認在MatLab中，當前所在的folder是proj02-04後，
點選main.m然後執行(亦可在command window中輸入main)
執行後會將proj02-04中的Fig0220(a).tif影像讀進來[註四]，
command window會詢問想要的dpi，計算出縮放比例。
main.m就會在proj02-04中產生resizeImage_with_{想要的dpi}_dpi.jpg
隨後在command windows會詢問是否要繼續執行，輸入1，執行題目中的part c的部分[註五]。
將前面產出的resizeImage_with_{想要的dpi}_dpi.jpg，在復原成原先的dpi。
因為這裡是對先前產出的影像做處理，所以如果要執行本題part ，就從一開始，
將desire dpi 設為100，然後一路執行下去即可。
最後除了將所放回原本大小的影像命名為resize_to_origi.jpg置於proj02-04外，
也會將原圖以及此圖放在同一個figure顯示出來。

[註四]：如果要其他影像作處理，請修改code中第5行imread function中的string
也就是影像在proj02-04中的位置。

[註五]：注意，此處僅執行part c