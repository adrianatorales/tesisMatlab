function valorMediana=medianaa(f,k,w,h,x,y)

  supp = [];
  valorMediana=0;
  
  valorMediana = valorMediana;
  number = 0;
  vecinosx = [-1 -1 -1  0 0 0  1 1 1];
  vecinosy = [-1  0  1 -1 0 1 -1 0 1];

  centro = f(x,y);

   for i=1:k*k
         xi = x + vecinosx(i);
         yi = y + vecinosy(i);
		 
		    elementoP = f(xi,yi);
            supp(end+1) = elementoP;
            number=number+1;

   
   end
   
   
   if(number==0)
       valorMediana=0;
       
   else
    ordenado = [];
    ordenado = sort(supp);
     
    [m,n] = size(supp);
    
%     valorMediana = median(ordenado);
    
  if mod(n,2)==0    
       valorMediana = (ordenado(n/2)+ordenado(n/2+1))/2; %diferencia con matlab

   
       
       
    else
       valorMediana = ordenado((n+1)/2);
    end
    
   end
    
   
   end