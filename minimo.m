function valorMinimo=minimo(f,k,w,h,x,y)

  supp = [];
  number = 0;
  
vecinosx = [-1 -1 -1 0 0 0 1 1 1];
vecinosy = [-1 0 1 -1 0 1 -1 0 1];

  
   for i=1:k*k
         xi = x + vecinosx(i);
         yi = y + vecinosy(i);
		 
		    elementoP = f(xi,yi);
            supp(end+1) = elementoP;
            number=number+1;
        
   end
   
   if(number==0)
       valorMinimo=0;
      
       
   else
    ordenado = [];
    ordenado = sort(supp);
    valorMinimo = ordenado(1);
    
    end
end