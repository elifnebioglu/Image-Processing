clear;
clc;
A=imread('heart.png')
[m,n]= size(A);
%B =A;
C=A;
for c = 1:m
    for r = 1:n
        C(c,r)=255-C(c,r);
    end
end
B =zeros(m,n,class(A));
for c = 1:m
    for r = 1:n
        if(C(c,r)==255)
            B(c,r)=255;
        end
    end
end
%imshow(C);

[a,b] = size(B);
for c = 1:a
    for r = 1:b
            if(B(c,r)~=255)
               % if(c>1 && r>1)
                    
                     if(c>1 && c<512&& r==1)
                            if(B(c-1,r)==255||B(c-1,r+1)==255||B(c,r+1)==255||B(c+1,r)==255||B(c+1,r+1)==255)
                                B(c,r)=1;
                            end
                        
                        elseif(c==1 && r==1)
                             if(B(c,r+1)==255||B(c+1,r)==255||B(c+1,r+1)==255)
                                 B(c,r)=1;
                            end
                        
                        elseif(c==512 && r==1)
                             if(B(c-1,r)==255||B(c-1,r+1)==255||B(c,r+1)==255)
                                 B(c,r)=1;
                            end
                        
                        elseif(r>1 &&r<512&& c==512)
                            if(B(c-1,r-1)==255||B(c-1,r)==255||B(c-1,r+1)==255||B(c,r-1)==255||B(c,r+1)==255)
                                B(c,r)=1;
                            end
                        
                        elseif(c==512 && r==512)
                             if(B(c-1,r)==255||B(c-1,r-1)==255||B(c,r-1)==255)
                                 B(c,r)=1;
                            end
                        
                        elseif(c>1 && c<512&& r==512)
                            if(B(c-1,r-1)==255||B(c-1,r)==255||B(c,r-1)==255||B(c+1,r-1)==255||B(c+1,r)==255)                                
                                B(c,r)=1;
                            end
                        
                        elseif(c==1 && r==512)
                             if(B(c,r-1)==255||B(c+1,r-1)==255||B(c+1,r)==255)
                                 B(c,r)=1;
                            end
                        
                        elseif(r>1 && r<512&& c==1)
                            if(B(c,r-1)==255||B(c+1,r-1)==255||B(c+1,r)==255||B(c+1,r+1)==255||B(c,r+1)==255)                                
                                B(c,r)=1;
                            end
                        else
                             if(B(c-1,r-1)==255||B(c-1,r)==255||B(c-1,r+1)==255||B(c,r-1)==255||B(c,r+1)==255||B(c+1,r-1)==255||B(c+1,r)==255||B(c+1,r+1)==255)
                            B(c,r)=1;
                             end
                        end
                %end
                
            end
       
    end
end
for c = 1:a
    for r = 1:b
            if(B(c,r)~=255)
                for d = 2:255
                    if(B(c,r)>d-1 || B(c,r)==0)
                       
                        if(c>1 && c<512&& r==1)
                            if(B(c-1,r)==d-1||B(c-1,r+1)==d-1||B(c,r+1)==d-1||B(c+1,r)==d-1||B(c+1,r+1)==d-1)
                                B(c,r)=d;
                            end
                        
                        elseif(c==1 && r==1)
                             if(B(c,r+1)==d-1||B(c+1,r)==d-1||B(c+1,r+1)==d-1)
                                 B(c,r)=d;
                            end
                        
                        elseif(c==512 && r==1)
                             if(B(c-1,r)==d-1||B(c-1,r+1)==d-1||B(c,r+1)==d-1)
                                 B(c,r)=d;
                            end
                        
                        elseif(r>1 &&r<512&& c==512)
                            if(B(c-1,r-1)==d-1||B(c-1,r)==d-1||B(c-1,r+1)==d-1||B(c,r-1)==d-1||B(c,r+1)==d-1)
                                B(c,r)=d;
                            end
                        
                        elseif(c==512 && r==512)
                             if(B(c-1,r)==d-1||B(c-1,r-1)==d-1||B(c,r-1)==d-1)
                                 B(c,r)=d;
                            end
                        
                        elseif(c>1 && c<512&& r==512)
                            if(B(c-1,r-1)==d-1||B(c-1,r)==d-1||B(c,r-1)==d-1||B(c+1,r-1)==d-1||B(c+1,r)==d-1)                                
                                B(c,r)=d;
                            end
                        
                        elseif(c==1 && r==512)
                             if(B(c,r-1)==d-1||B(c+1,r-1)==d-1||B(c+1,r)==d-1)
                                 B(c,r)=d;
                            end
                        
                        elseif(r>1 && r<512&& c==1)
                            if(B(c,r-1)==d-1||B(c+1,r-1)==d-1||B(c+1,r)==d-1||B(c+1,r+1)==d-1||B(c,r+1)==d-1)                                
                                B(c,r)=d;
                            end
                        else
                             if(B(c-1,r-1)==d-1||B(c-1,r)==d-1||B(c-1,r+1)==d-1||B(c,r-1)==d-1||B(c,r+1)==d-1||B(c+1,r-1)==d-1||B(c+1,r)==d-1||B(c+1,r+1)==d-1)
                            B(c,r)=d;
                             end
                        end
                        
                    end
                end
            end
            
       
    end
end
%NORMALIZATION STEP
for x = 1:a
    for y = 1:b
     min = 0;
        if (B(x,y) < min) 
            min = B(x,y);
        end
    end
end
for x = 1:a
    for y = 1:b
        B(x,y)=B(x,y)-min;
    end
end
for x = 1:a
    for y = 1:b
     max = 255;
        if (B(x,y) > max) 
            max = B(x,y);
        end
    end
end
for x = 1:a
    for y = 1:b
        B(x,y)=B(x,y)*round(255/max);
    end
end
%figure
imshow(B);