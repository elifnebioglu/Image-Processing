A=imread('indir.jpg')
[m,n]= size(A);
esikdeger =sum(sum(A))/m/n ;
B=A;
B(B<esikdeger)=0;
B(B>esikdeger)=255;
imshow(B)