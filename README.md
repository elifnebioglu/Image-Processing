# Image-Processing
EsikDeger.m;
for donguleri ile image'i gezdikten sonra bast belirlemis oldugum eski deger'den kucuk olan degerleri 0'a esitlerken buyuk olanlari 255'e esitliyor.

NearestNeighbor.m;
imagein boyutlarinin istenilen kat ile carpilmasi sonucu olusan boyut degerlerine sahip sadece 1lerden olusan bir matris olusturuyor ve algoritmada olmasi gerektigi gibi for donguleri ile gezilen pixellerdeki degerleri x ve y nin istenilen kat degerlerine bolunmesi sonucu olusan yeni x ve y degerlerini asil resimden aliyor ve sonuc resmine yaziyor.

BilinearInterpolation.m;
![image](https://user-images.githubusercontent.com/78234356/121352149-38e65180-c935-11eb-8094-6ab616b09787.png)
Uyulanan formul en basit haliyle buydu. Buradaki 0lar koddaki xi ve yi'ye denk geliyor. 1ler ise xii'ye denk geliyor.Formuldeki x ve y kodda dx ve dy'ye denk geliyor bu da x ve y'Nin double ve integer hallerindeki kusurat farki.

BicubicInterpolation.m;
Bicubic fonksiyonunda kullanilan algoritma;
![image](https://user-images.githubusercontent.com/78234356/121353140-33d5d200-c936-11eb-8421-8b1adee63a8d.png)
Ana fonksiyonda uygulanan algoritma;
![image](https://user-images.githubusercontent.com/78234356/121353180-3d5f3a00-c936-11eb-9871-38a9b030bd02.png)
En basta asil resmin ilk 2 satir ve sutunu sonuc resmine eklendi.
