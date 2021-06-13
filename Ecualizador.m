%Ecualizador no lineal

function salida=ecualizar(imagen,a1,a2,b1,b2)

  [r,c]=size(imagen);
  salida=imagen;
  lo=a2-a1
  nl=b2-b1
  for i=1:r
    for j=1:c

     if (imagen(i,j)>a1)&&(imagen(i,j)<a2)

      salida(i,j)=(imagen-(i,j)-a1)*((nl)/(lo));

    end
    end
 end

     salida=uint8(salida);
     figure
     subplot(2,2,1)
     imshow(imagen);
     title('Original');
     subplot(2,2,2)
     imshow(imagen);
     title('Histograma original');
     subplot(2,2,3)
     imshow(imagen);
     title('Ecualizada');
     subplot(2,2,4)
     imshow(imagen);
     title('Histograma ecualizado');

endfunction
