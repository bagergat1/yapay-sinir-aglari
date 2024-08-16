clc; clear all; close all; 
% iterasyonsayisi=input("Kac adet iterasyon yapmak istediginizi girin:");
noktasayisi=input("Kac adet nokta gireceginizi belirtin:");
nokta=1;
iterasyon=1;
beklenenler=input("Beklenen degerleri matris seklinde girin:");
c=input("C degerini girin:");
w1=input("W1 degerini girin:");
x1=input("x1 degerini girin:");
x2=input("x2 degerini girin:");
x3=input("x3 degerini girin:");
x4=input("x4 degerini girin:");
x5=input("x5 degerini girin:");
x6=input("x6 degerini girin:");
while 3>=iterasyon
    if iterasyon==1
        %1.iterasyon 1.adım
    
        sonuc=adim(w1,x1);
        v1=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v1'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
        w2=omega(beklenenler(1),v1,w1,c,x1);
        fprintf(" \n%d . iterasyon w2'in sonuc\n:",iterasyon);
        disp(w2);
        fprintf("\n\n****************************************************************\n\n");
        %1.iterasyon 2.adım
        
        sonuc=adim(w2,x2);
        v2=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v2'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v2)
        w3=omega(beklenenler(2),v2,w2,c,x2);
        fprintf(" \n%d . iterasyon w3'in sonuc:\n",iterasyon);
        disp(w3);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 3.adım

        sonuc=adim(w3,x3);
        v3=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v3'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v3)
        w4=omega(beklenenler(3),v3,w3,c,x3);
        fprintf(" \n%d . iterasyon w4'in sonuc:\n",iterasyon);
        disp(w4);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 4.adım

        sonuc=adim(w4,x4);
        v4=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v4'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v4)
        w5=omega(beklenenler(4),v4,w4,c,x4);
        fprintf(" \n%d . iterasyon w5'in sonuc:\n",iterasyon);
        disp(w5);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 5.adım
        
        sonuc=adim(w5,x5);
        v5=aktivasyonfonksiyonu(sonuc);
        fprintf("%d . iterasyon v5'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v5)
        w6=omega(beklenenler(5),v5,w5,c,x5);
        fprintf(" \n%d . iterasyon w6'in sonuc:\n",iterasyon);
        disp(w6);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 6.adım
        
        sonuc=adim(w6,x6);
        v6=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v6'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v6)
        w7=omega(beklenenler(6),v6,w6,c,x6);
        fprintf(" \n%d . iterasyon w7'in sonuc:\n",iterasyon);
        disp(w7);
        fprintf("\n\n****************************************************************\n\n");
    end

    if iterasyon==2
        %1.iterasyon 1.adım
    
        sonuc=adim(w7,x1);
        v1=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v1'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
        w8=omega(beklenenler(1),v1,w7,c,x1);
        fprintf(" \n%d . iterasyon w8'in sonuc:\n",iterasyon);
        disp(w8);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 2.adım
        
        sonuc=adim(w8,x2);
        v2=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v2'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v2)
        w9=omega(beklenenler(2),v2,w8,c,x2);
        fprintf(" \n%d . iterasyon w9'in sonuc:\n",iterasyon);
        disp(w9);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 3.adım

        sonuc=adim(w9,x3);
        v3=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v3'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v3)
        w10=omega(beklenenler(3),v3,w9,c,x3);
        fprintf(" \n%d . iterasyon w10'in sonuc:\n",iterasyon);
        disp(w10);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 4.adım

        sonuc=adim(w10,x4);
        v4=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v4'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v4)
        w11=omega(beklenenler(4),v4,w10,c,x4);
        fprintf(" \n%d . iterasyon w11'in sonuc:\n",iterasyon);
        disp(w11);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 5.adım
        
        sonuc=adim(w11,x5);
        v5=aktivasyonfonksiyonu(sonuc);
        fprintf("%d . iterasyon v5'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v5)
        w12=omega(beklenenler(5),v5,w11,c,x5);
        fprintf(" \n%d . iterasyon w12'in sonuc:\n",iterasyon);
        disp(w12);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 6.adım
        
        sonuc=adim(w12,x6);
        v6=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v6'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v6)
        w13=omega(beklenenler(6),v6,w12,c,x6);
        fprintf(" \n%d . iterasyon w13'in sonuc:\n",iterasyon);
        disp(w13);
        fprintf("\n\n****************************************************************\n\n");

    end
    
    if iterasyon==3
        %1.iterasyon 1.adım
    
        sonuc=adim(w13,x1);
        v1=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v1'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
        w14=omega(beklenenler(1),v1,w13,c,x1);
        fprintf(" \n%d . iterasyon w14'in sonuc:\n",iterasyon);
        disp(w14);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 2.adım
        
        sonuc=adim(w14,x2);
        v2=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v2'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v2)
        w15=omega(beklenenler(2),v2,w14,c,x2);
        fprintf(" \n%d . iterasyon w15'in sonuc:\n",iterasyon);
        disp(w15);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 3.adım

        sonuc=adim(w15,x3);
        v3=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v3'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v3)
        w16=omega(beklenenler(3),v3,w15,c,x3);
        fprintf(" \n%d . iterasyon w16'in sonuc:\n",iterasyon);
        disp(w16);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 4.adım

        sonuc=adim(w16,x4);
        v4=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v4'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v4)
        w17=omega(beklenenler(4),v4,w16,c,x4);
        fprintf(" \n%d . iterasyon w17'in sonuc:\n",iterasyon);
        disp(w17);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 5.adım
        
        sonuc=adim(w17,x5);
        v5=aktivasyonfonksiyonu(sonuc);
        fprintf("%d . iterasyon v5'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v5)
        w18=omega(beklenenler(5),v5,w17,c,x5);
        fprintf(" \n%d . iterasyon w18'in sonuc:\n",iterasyon);
        disp(w18);
        fprintf("\n\n****************************************************************\n\n");

        %1.iterasyon 6.adım
        
        sonuc=adim(w18,x6);
        v6=aktivasyonfonksiyonu(sonuc);
        fprintf(" %d . iterasyon v6'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v6)
        w19=omega(beklenenler(6),v6,w18,c,x6);
        fprintf(" \n%d . iterasyon w19'in sonuc:\n",iterasyon);
        disp(w19);
        fprintf("\n\n****************************************************************\n\n");
    end
    iterasyon=iterasyon+1;
end