function gg=medianaAdaptativoEscalaGrises(f,smax)

[fila,columna]=size(f);
gg=zeros(size(f));


relleno = zeros(fila+2, columna+2);
relleno(2:fila+1, 2:columna+1) =(f(1:fila,1:columna));

f=relleno;

g = zeros (size(relleno));



vecinosx = [-1 -1 -1  0 0 0  1 1 1];
vecinosy = [-1  0  1 -1 0 1 -1 0 1];
aumentar = 1;
zmin = -1;

n = 3;
subListaOrder = [];

   while (aumentar==1 && n<=smax)
       aumentar=0;
       for i=2:fila+1
           for j=2:columna+1 
            zmin = minimo (f,smax,fila+1,columna+1,i,j);
            zmax = maximo (f,smax,fila+1,columna+1,i,j);
            zmed = medianaa (f,smax,fila+1,columna+1,i,j);
             
            
           
            zxy = f(i,j);
      
 	        if(zmed>zmin && zmax>zmed)
                if(zxy>zmin && zmax>zxy)
 	                	g(i,j) = zxy;
                                                 
                else
                         g(i,j) = zmed;
                        
                end
            else
                g(i,j) = zmed;
			
            end
           
       end
   end
            
 gg = g(2:fila+1, 2:columna+1); 
 


end
