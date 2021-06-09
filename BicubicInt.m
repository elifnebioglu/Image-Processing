clear;
clc;
A=imread('fitnuss.jpg')
[m,n,k]= size(A);
onx = 2;
ony = 2;
C =ones(round(m*onx),round(n*ony),3,class(A));
B =ones(round(m*onx),round(n*ony),3,class(A));
%cast(B,'uint8');
[a,b,t] = size(B);
%[a,b,t] = size(C);
 d= A(1,:,:); e = A(m,:,:);
    C = [d;d;A;e;e];
    f = C(:,1,:); g = C(:,n,:);
    B = [f,f,C,g,g];
for c = 1:a
    xt = c/onx;
    xi = floor(xt);
    xi(xi < 1) = 1;
    xi(xi > m- 1) = m - 1;
    x0=xi-1;
    x1=xi;
    x2=xi+1;
    x3=xi+2;
    ux0 = kern(x0 - xt);
	ux1 = kern(x1 - xt);
	ux2 = kern(x2 - xt);
	ux3 = kern(x3 - xt);
    for r = 1:b
        yt = r / ony;
        yi=floor(yt);
        yi(yi < 1) = 1;
        yi(yi > n - 1) = n - 1;
		y0 = yi - 1;
        y1=yi;
		y2 = yi + 1;
		y3 = yi + 2;
		uy0 = kern(y0 - yt);
		uy1 = kern(y1 - yt);
		uy2 = kern(y2 - yt);
		uy3 = kern(y3 - yt);
		u00 = ux0*uy0;
		u01 = ux0*uy1;
		u02 = ux0*uy2;
		u03 = ux0*uy3;
		u10 = ux1*uy0;
		u11 = ux1*uy1;
		u12 = ux1*uy2;
		u13 = ux1*uy3;
		u20 = ux2*uy0;
		u21 = ux2*uy1;
		u22 = ux2*uy2;
		u23 = ux2*uy3;
		u30 = ux3*uy0;
		u31 = ux3*uy1;
		u32 = ux3*uy2;
		u33 = ux3*uy3;
        
        for p =1:3
            
        if ((x0 >=1) && (x3 < m) && (y0 >=1) && (y3 < n))
			
        B(c,r,p)= A(x0, y0,p)*u00 + A(x0, y1,p)*u01 + A(x0, y2,p)*u02 + A(x0, y3,p)*u03+A(x1, y0,p)*u10 +A(x1, y1,p)*u11 +A(x1, y2,p)*u12 +A(x1, y3,p)*u13+A(x2, y0,p)*u20 +A(x2, y1,p)*u21 +A(x2, y2,p)*u22 + A(x2, y3,p)*u23+A(x3, y0,p)*u30 + A(x3, y1,p)*u31 +A(x3, y2,p)*u32 + A(x3, y3,p)*u33;
        end
        end
        
    end
end
imshow(B);
function [o] = kern(y)
    x = abs(y);
	a = -0.5;
	if (x <= 1)
		o=(a + 2)* power(x, 3) - (a + 3)*power(x, 2) + 1;
    elseif (x < 2)
		o= a*power(x, 3) + 5 * a*power(x, 2) - 4 * a;
    else
        o=0.0;
    end
	
end