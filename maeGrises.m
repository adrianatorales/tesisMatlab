function valor = maeGrises(ImagenOriginal,ImagenFiltrado)

    [F,C]=size(ImagenOriginal);
	
    suma=0;
    
    for i=1:F
        for j=1:C
            
            suma=suma+abs(ImagenOriginal(i,j)-ImagenFiltrado(i,j));
        end
    end
    suma
    valor=double(suma/(F*C));
end