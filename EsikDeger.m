clear;
clc;
A=imread('fitnut.jpg')
[m,n,k]= size(A);
esikdeger =90 ;
B=A;
for c = 1:m
    for r = 1:n
        for p = 1:k
            if(B(c,r,p)<esikdeger)
                B(c,r,p)=0;
            else
                B(c,r,p)=255;
            end
        end
    end
end
imshow(B);