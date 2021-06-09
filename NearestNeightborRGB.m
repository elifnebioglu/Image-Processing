clear;
clc;
A=imread('fitnuss.jpg')
[m,n,k]= size(A);
onx = 2;
ony = 2;
B =ones(round(m*onx),round(n*ony),3,class(A));
%cast(B,'uint8');
[a,b,t] = size(B);
for c = 1:a
    for r = 1:b
        for p = 1:k
        ilkininxi = round(c/onx);
        ilkininysi = round(r/ony);
            if ilkininxi<1
                ilkininxi=1;
            end
            if ilkininysi<1
                ilkininysi=1;
            end
            if ilkininxi>m
                ilkininxi=m;
            end
            if ilkininysi>n
                ilkininysi=n;
            end
        B(c,r,p)=A(ilkininxi,ilkininysi,p);
        end
    end
end
figure

imshow(B);