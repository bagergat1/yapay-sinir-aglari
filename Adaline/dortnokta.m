clc; clear all; close all; 
% iterasyonsayisi=input("Kac adet iterasyon yapmak istediginizi girin:");
% noktasayisi=input("Kac adet nokta gireceginizi belirtin:");
nokta=1;
iterasyon=1;
e_values=ones(1,4);
beklenenler=input("Beklenen degerleri matris seklinde gir:");
c=input("C degerini girin:");
durdurmaolcutu=input("Durdurma olcutunu giriniz:");
w1=input("W1 degerini girin:");
x1=input("x1 degerini girin:");
x2=input("x2 degerini girin:");
x3=input("x3 degerini girin:");
x4=input("x4 degerini girin:");
% x5=input("x5 degerini girin:");
% x6=input("x6 degerini girin:");
while 1
    if iterasyon==1
        
%         1iters.Oruntu

        v1=adim(w1,x1);
        y1=aktivasyon_fonksiyonu(v1);
%         disp(sonuc2)
        fprintf(" %d . iterasyon v1'in sonuc: %f aktivasyon fonksiyonu sonrasi y1: %f\n",iterasyon,v1,y1)
        turev=diferansiyel(v1);
        w2=omega(w1,c,beklenenler(1),y1,turev,x1);
        fprintf(" \n%d . iterasyon w2'in sonuc:\n",iterasyon);
        disp(w2)
        fprintf("\n\n****************************************************************\n\n");
        e_values(1,1)=e_value(beklenenler(1),y1);

%         2.Oruntu
        v2=adim(w2,x2);
        y2=aktivasyon_fonksiyonu(v2);
        fprintf(" %d . iterasyon v2'in sonuc: %f aktivasyon fonksiyonu sonrasi y2: %f\n",iterasyon,v2,y2)
        turev=diferansiyel(v2);
        w3=omega(w2,c,beklenenler(2),y2,turev,x2);
        fprintf(" \n%d . iterasyon w3'in sonuc:\n",iterasyon);
        disp(w3)
        fprintf("\n\n****************************************************************\n\n");
        e_values(1,2)=e_value(beklenenler(2),y2);

%         3.Oruntu
        v3=adim(w3,x3);
        y3=aktivasyon_fonksiyonu(v3);
        fprintf(" %d . iterasyon v3'in sonuc: %f aktivasyon fonksiyonu sonrasi y3: %f\n",iterasyon,v3,y3)
        turev=diferansiyel(v3);
        w4=omega(w3,c,beklenenler(3),y3,turev,x3);
        fprintf(" \n%d . iterasyon w4'in sonuc:\n",iterasyon);
        disp(w4)
        fprintf("\n\n****************************************************************\n\n");
        e_values(1,3)=e_value(beklenenler(3),y3);

%         4.Oruntu
        v4=adim(w4,x4);
        y4=aktivasyon_fonksiyonu(v4);
        fprintf(" %d . iterasyon v4'in sonuc: %f aktivasyon fonksiyonu sonrasi y4: %f\n",iterasyon,v4,y4)
        turev=diferansiyel(v4);
        w5=omega(w4,c,beklenenler(4),y4,turev,x4);
        fprintf(" \n%d . iterasyon w5'in sonuc:\n",iterasyon);
        disp(w5)
        fprintf("\n\n****************************************************************\n\n");
        e_values(1,4)=e_value(beklenenler(4),y4);
%         disp(e_values)
        eTe=e_values*e_values';
        fprintf("4 oruntu sonrasi kontrol edildiginde e^T*e sonucu:%f\n",eTe);
        randomst=size(beklenenler);
        randomst=randomst(2);
        meanoferr=eTe/randomst;
        fprintf("Ortalama Hata orani:%f",meanoferr);

%         BURADA HATA VAR.FONKSİYONU DÜZELT

        evaluate=makeorbreak(meanoferr,durdurmaolcutu);
        if evaluate
            fprintf("Ort Hata durdurma ölçütünden küçük olduğu için iterasyonun sonuna geldik.")
            break
        end
        elseif iterasyon==2
            %         1iters.Oruntu

            v1=adim(w5,x1);
            y1=aktivasyon_fonksiyonu(v1);
%           disp(sonuc2)
            fprintf(" %d . iterasyon v1'in sonuc: %f aktivasyon fonksiyonu sonrasi y1: %f\n",iterasyon,v1,y1)
            turev=diferansiyel(v1);
            w6=omega(w5,c,beklenenler(1),y1,turev,x1);
            fprintf(" \n%d . iterasyon w6'in sonuc:\n",iterasyon);
            disp(w6)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,1)=e_value(beklenenler(1),y1);

%           2.Oruntu
            v2=adim(w6,x2);
            y2=aktivasyon_fonksiyonu(v2);
            fprintf(" %d . iterasyon v2'in sonuc: %f aktivasyon fonksiyonu sonrasi y2: %f\n",iterasyon,v2,y2)
            turev=diferansiyel(v2);
            w7=omega(w6,c,beklenenler(2),y2,turev,x2);
            fprintf(" \n%d . iterasyon w7'in sonuc:\n",iterasyon);
            disp(w7)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,2)=e_value(beklenenler(2),y2);

%         3.Oruntu
            v3=adim(w7,x3);
            y3=aktivasyon_fonksiyonu(v3);
            fprintf(" %d . iterasyon v3'in sonuc: %f aktivasyon fonksiyonu sonrasi y3: %f\n",iterasyon,v3,y3)
            turev=diferansiyel(v3);
            w8=omega(w7,c,beklenenler(3),y3,turev,x3);
            fprintf(" \n%d . iterasyon w8'in sonuc:\n",iterasyon);
            disp(w8)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,3)=e_value(beklenenler(3),y3);

%           4.Oruntu
            v4=adim(w8,x4);
            y4=aktivasyon_fonksiyonu(v4);
            fprintf(" %d . iterasyon v4'in sonuc: %f aktivasyon fonksiyonu sonrasi y4: %f\n",iterasyon,v4,y4)
            turev=diferansiyel(v4);
            w9=omega(w8,c,beklenenler(4),y4,turev,x4);
            fprintf(" \n%d . iterasyon w9'in sonuc:\n",iterasyon);
            disp(w9)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,4)=e_value(beklenenler(4),y4);
%           disp(e_values)
            eTe=e_values*e_values';
            fprintf("4 oruntu sonrasi kontrol edildiginde e^T*e sonucu:%f\n",eTe);
            randomst2=size(e_values);
            randomst2=randomst2(2);
            meanoferr=eTe/randomst2;
            fprintf("Ortalama Hata orani:%f\n",meanoferr);

%         BURADA HATA VAR.FONKSİYONU DÜZELT

            evaluate=makeorbreak(meanoferr,durdurmaolcutu);
            if evaluate
                fprintf("Ort Hata durdurma ölçütünden küçük olduğu için iterasyonun sonuna geldik.")
                break
            end

            elseif iterasyon==3
            %         1iters.Oruntu

            v1=adim(w9,x1);
            y1=aktivasyon_fonksiyonu(v1);
%           disp(sonuc2)
            fprintf(" %d . iterasyon v1'in sonuc: %f aktivasyon fonksiyonu sonrasi y1: %f\n",iterasyon,v1,y1)
            turev=diferansiyel(v1);
            w10=omega(w9,c,beklenenler(1),y1,turev,x1);
            fprintf(" \n%d . iterasyon w10'in sonuc:\n",iterasyon);
            disp(w10)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,1)=e_value(beklenenler(1),y1);

%           2.Oruntu
            v2=adim(w10,x2);
            y2=aktivasyon_fonksiyonu(v2);
            fprintf(" %d . iterasyon v2'in sonuc: %f aktivasyon fonksiyonu sonrasi y2: %f\n",iterasyon,v2,y2)
            turev=diferansiyel(v2);
            w11=omega(w10,c,beklenenler(2),y2,turev,x2);
            fprintf(" \n%d . iterasyon w11'in sonuc:\n",iterasyon);
            disp(w11)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,2)=e_value(beklenenler(2),y2);

%         3.Oruntu
            v3=adim(w11,x3);
            y3=aktivasyon_fonksiyonu(v3);
            fprintf(" %d . iterasyon v3'in sonuc: %f aktivasyon fonksiyonu sonrasi y3: %f\n",iterasyon,v3,y3)
            turev=diferansiyel(v3);
            w12=omega(w11,c,beklenenler(3),y3,turev,x3);
            fprintf(" \n%d . iterasyon w12'in sonuc:\n",iterasyon);
            disp(w12)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,3)=e_value(beklenenler(3),y3);

%           4.Oruntu
            v4=adim(w12,x4);
            y4=aktivasyon_fonksiyonu(v4);
            fprintf(" %d . iterasyon v4'in sonuc: %f aktivasyon fonksiyonu sonrasi y4: %f\n",iterasyon,v4,y4)
            turev=diferansiyel(v4);
            w13=omega(w12,c,beklenenler(4),y4,turev,x4);
            fprintf(" \n%d . iterasyon w13'in sonuc:\n",iterasyon);
            disp(w13)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,4)=e_value(beklenenler(4),y4);
%           disp(e_values)
            eTe=e_values*e_values';
            fprintf("4 oruntu sonrasi kontrol edildiginde e^T*e sonucu:%f\n",eTe);
            randomst2=size(e_values);
            randomst2=randomst2(2);
            meanoferr=eTe/randomst2;
            fprintf("Ortalama Hata orani:%f\n",meanoferr);
            evaluate=makeorbreak(meanoferr,durdurmaolcutu);
            if evaluate
                fprintf("Ort Hata durdurma ölçütünden küçük olduğu için iterasyonun sonuna geldik.")
                break
            end
    end
    iterasyon=iterasyon+1;
end 