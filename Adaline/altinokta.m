clc; clear all; close all; 
% iterasyonsayisi=input("Kac adet iterasyon yapmak istediginizi girin:");
% noktasayisi=input("Kac adet nokta gireceginizi belirtin:");
nokta=1;
iterasyon=1;
e_values=ones(1,6);
beklenenler=input("Beklenen degerleri matris seklinde gir:");
c=input("C degerini girin:");
durdurmaolcutu=input("Durdurma olcutunu giriniz:");
w1=input("W1 degerini girin:");
x1=input("x1 degerini girin:");
x2=input("x2 degerini girin:");
x3=input("x3 degerini girin:");
x4=input("x4 degerini girin:");
x5=input("x5 degerini girin:");
x6=input("x6 degerini girin:");
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
        
        v5=adim(w5,x5);
        y5=aktivasyon_fonksiyonu(v5);
%       disp(sonuc2)
        fprintf(" %d . iterasyon v5'in sonuc: %f aktivasyon fonksiyonu sonrasi y5: %f\n",iterasyon,v5,y5)
        turev=diferansiyel(v5);
        w6=omega(w5,c,beklenenler(5),y5,turev,x5);
        fprintf(" \n%d . iterasyon w6'in sonuc:\n",iterasyon);
        disp(w6)
        fprintf("\n\n****************************************************************\n\n");
        e_values(1,5)=e_value(beklenenler(5),y5);

        v6=adim(w6,x6);
        y6=aktivasyon_fonksiyonu(v6);
%       disp(sonuc2)
        fprintf(" %d . iterasyon v6'in sonuc: %f aktivasyon fonksiyonu sonrasi y6: %f\n",iterasyon,v6,y6)
        turev=diferansiyel(v6);
        w7=omega(w6,c,beklenenler(6),y6,turev,x6);
        fprintf(" \n%d . iterasyon w7'in sonuc:\n",iterasyon);
        disp(w7)
        fprintf("\n\n****************************************************************\n\n");
        e_values(1,6)=e_value(beklenenler(6),y6);

        eTe=e_values*e_values';
        fprintf("6 oruntu sonrasi kontrol edildiginde e^T*e sonucu:%f\n",eTe);
        randomst=size(beklenenler);
        randomst=randomst(2);
        meanoferr=eTe/randomst;
        fprintf("Ortalama Hata orani:%f",meanoferr);
        fprintf("\n\n****************************************************************\n\n");
        
%         BURADA HATA VAR.FONKSİYONU DÜZELT

        evaluate=makeorbreak(meanoferr,durdurmaolcutu);
        if evaluate
            fprintf("Ort Hata durdurma ölçütünden küçük olduğu için iterasyonun sonuna geldik.")
            break
        end
        elseif iterasyon==2
            %         1iters.Oruntu

            v1=adim(w7,x1);
            y1=aktivasyon_fonksiyonu(v1);
%           disp(sonuc2)
            fprintf(" %d . iterasyon v1'in sonuc: %f aktivasyon fonksiyonu sonrasi y1: %f\n",iterasyon,v1,y1)
            turev=diferansiyel(v1);
            w8=omega(w7,c,beklenenler(1),y1,turev,x1);
            fprintf(" \n%d . iterasyon w8'in sonuc:\n",iterasyon);
            disp(w8)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,1)=e_value(beklenenler(1),y1);

%           2.Oruntu
            v2=adim(w8,x2);
            y2=aktivasyon_fonksiyonu(v2);
            fprintf(" %d . iterasyon v2'in sonuc: %f aktivasyon fonksiyonu sonrasi y2: %f\n",iterasyon,v2,y2)
            turev=diferansiyel(v2);
            w9=omega(w8,c,beklenenler(2),y2,turev,x2);
            fprintf(" \n%d . iterasyon w9'in sonuc:\n",iterasyon);
            disp(w9)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,2)=e_value(beklenenler(2),y2);

%         3.Oruntu
            v3=adim(w9,x3);
            y3=aktivasyon_fonksiyonu(v3);
            fprintf(" %d . iterasyon v3'in sonuc: %f aktivasyon fonksiyonu sonrasi y3: %f\n",iterasyon,v3,y3)
            turev=diferansiyel(v3);
            w10=omega(w9,c,beklenenler(3),y3,turev,x3);
            fprintf(" \n%d . iterasyon w10'in sonuc:\n",iterasyon);
            disp(w10)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,3)=e_value(beklenenler(3),y3);

%           4.Oruntu
            v4=adim(w10,x4);
            y4=aktivasyon_fonksiyonu(v4);
            fprintf(" %d . iterasyon v4'in sonuc: %f aktivasyon fonksiyonu sonrasi y4: %f\n",iterasyon,v4,y4)
            turev=diferansiyel(v4);
            w11=omega(w10,c,beklenenler(4),y4,turev,x4);
            fprintf(" \n%d . iterasyon w11'in sonuc:\n",iterasyon);
            disp(w11)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,4)=e_value(beklenenler(4),y4);
            
%             5.Oruntu
            v5=adim(w11,x5);
            y5=aktivasyon_fonksiyonu(v5);
            fprintf(" %d . iterasyon v5'in sonuc: %f aktivasyon fonksiyonu sonrasi y5: %f\n",iterasyon,v5,y5)
            turev=diferansiyel(v5);
            w12=omega(w11,c,beklenenler(5),y5,turev,x5);
            fprintf(" \n%d . iterasyon w12'in sonuc:\n",iterasyon);
            disp(w12)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,5)=e_value(beklenenler(5),y5);

            %             6.Oruntu
            v6=adim(w12,x6);
            y6=aktivasyon_fonksiyonu(v6);
            fprintf(" %d . iterasyon v6'in sonuc: %f aktivasyon fonksiyonu sonrasi y6: %f\n",iterasyon,v6,y6)
            turev=diferansiyel(v6);
            w13=omega(w12,c,beklenenler(6),y6,turev,x6);
            fprintf(" \n%d . iterasyon w13'in sonuc:\n",iterasyon);
            disp(w13)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,6)=e_value(beklenenler(6),y6);

%           disp(e_values)
            eTe=e_values*e_values';
            fprintf("6 oruntu sonrasi kontrol edildiginde e^T*e sonucu:%f\n",eTe);
            randomst2=size(e_values);
            randomst2=randomst2(2);
            meanoferr=eTe/randomst2;
            fprintf("Ortalama Hata orani:%f",meanoferr);
            fprintf("\n\n****************************************************************\n\n");
            evaluate=makeorbreak(meanoferr,durdurmaolcutu);
            if evaluate
                fprintf("Ort Hata durdurma ölçütünden küçük olduğu için iterasyonun sonuna geldik.")
                break
            end

            elseif iterasyon==3
            %         1iters.Oruntu

            v1=adim(w13,x1);
            y1=aktivasyon_fonksiyonu(v1);
%           disp(sonuc2)
            fprintf(" %d . iterasyon v1'in sonuc: %f aktivasyon fonksiyonu sonrasi y1: %f\n",iterasyon,v1,y1)
            turev=diferansiyel(v1);
            w14=omega(w13,c,beklenenler(1),y1,turev,x1);
            fprintf(" \n%d . iterasyon w14'in sonuc:\n",iterasyon);
            disp(w14)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,1)=e_value(beklenenler(1),y1);

%           2.Oruntu
            v2=adim(w14,x2);
            y2=aktivasyon_fonksiyonu(v2);
            fprintf(" %d . iterasyon v2'in sonuc: %f aktivasyon fonksiyonu sonrasi y2: %f\n",iterasyon,v2,y2)
            turev=diferansiyel(v2);
            w15=omega(w14,c,beklenenler(2),y2,turev,x2);
            fprintf(" \n%d . iterasyon w15'in sonuc:\n",iterasyon);
            disp(w15)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,2)=e_value(beklenenler(2),y2);

%         3.Oruntu
            v3=adim(w15,x3);
            y3=aktivasyon_fonksiyonu(v3);
            fprintf(" %d . iterasyon v3'in sonuc: %f aktivasyon fonksiyonu sonrasi y3: %f\n",iterasyon,v3,y3)
            turev=diferansiyel(v3);
            w16=omega(w15,c,beklenenler(3),y3,turev,x3);
            fprintf(" \n%d . iterasyon w16'in sonuc:\n",iterasyon);
            disp(w16)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,3)=e_value(beklenenler(3),y3);

%           4.Oruntu
            v4=adim(w16,x4);
            y4=aktivasyon_fonksiyonu(v4);
            fprintf(" %d . iterasyon v4'in sonuc: %f aktivasyon fonksiyonu sonrasi y4: %f\n",iterasyon,v4,y4)
            turev=diferansiyel(v4);
            w17=omega(w16,c,beklenenler(4),y4,turev,x4);
            fprintf(" \n%d . iterasyon w17'in sonuc:\n",iterasyon);
            disp(w17)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,4)=e_value(beklenenler(4),y4);

            %             5.Oruntu
            v5=adim(w17,x5);
            y5=aktivasyon_fonksiyonu(v5);
            fprintf(" %d . iterasyon v5'in sonuc: %f aktivasyon fonksiyonu sonrasi y5: %f\n",iterasyon,v5,y5)
            turev=diferansiyel(v5);
            w18=omega(w17,c,beklenenler(5),y5,turev,x5);
            fprintf(" \n%d . iterasyon w18'in sonuc:\n",iterasyon);
            disp(w18)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,5)=e_value(beklenenler(5),y5);

            %             6.Oruntu
            v6=adim(w18,x6);
            y6=aktivasyon_fonksiyonu(v6);
            fprintf(" %d . iterasyon v6'in sonuc: %f aktivasyon fonksiyonu sonrasi y6: %f\n",iterasyon,v6,y6)
            turev=diferansiyel(v6);
            w19=omega(w18,c,beklenenler(6),y6,turev,x6);
            fprintf(" \n%d . iterasyon w19'in sonuc:\n",iterasyon);
            disp(w19)
            fprintf("\n\n****************************************************************\n\n");
            e_values(1,6)=e_value(beklenenler(6),y6);

%           disp(e_values)
            eTe=e_values*e_values';
            fprintf("6 oruntu sonrasi kontrol edildiginde e^T*e sonucu:%f\n",eTe);
            randomst2=size(e_values);
            randomst2=randomst2(2);
            meanoferr=eTe/randomst2;
            fprintf("Ortalama Hata orani:%f\n",meanoferr);
            fprintf("\n\n****************************************************************\n\n");
            evaluate=makeorbreak(meanoferr,durdurmaolcutu);
            if evaluate
                fprintf("Ort Hata durdurma ölçütünden küçük olduğu için iterasyonun sonuna geldik.")
                break
            end
    end
    iterasyon=iterasyon+1;
end 