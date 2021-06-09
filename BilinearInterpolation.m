clear;
clc;
A=imread('fitnut.jpg')
[m,n,k]= size(A);
onx = 2;
ony = 2;
B =ones(round(m*onx),round(n*ony),class(A));
%cast(B,'uint8');
[a,b,t] = size(B);
for c = 1:a
    xt = c/onx;
    xi = floor(xt);
    xii = xi+1;
    dx = xt-xi;
    xi(xi < 1) = 1;
    xi(xi > m- 1) = m - 1;
    for r = 1:b
        yt=r/ony;
        yi=floor(yt);
        yii=yi+1;
        dy= yt-yi;
        yi(yi < 1) = 1;
        yi(yi > n - 1) = n - 1;
        if (xii >(m - 1))
		
			xii = xi - 1;
        end
		if (yii > (n - 1))
		yii = yi - 1;
        end
       
        B(c,r)=round(A(xi,yi)*(1-dx)*(1-dy)+ A(xii,yi)*dx*(1-dy)+A(xi,yii)*(1-dx)*dy+ A(xii,yii)*dx*dy);
     
        
    end
end
imshow(B);