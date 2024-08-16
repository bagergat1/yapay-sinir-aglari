clc;clear all;close all;
iterasyonsayisi=input("Kac adet iterasyon yapmak istediginizi girin:");
noktasayisi=input("Kac adet nokta gireceginizi belirtin:");
nokta=1;
iterasyon=1;
beklenenler=[1,-1,-1,1,-1,1];
c=input("C degerini girin:");
w1=input("W1 degerini girin:");
x1=input("x1 degerini girin:");
x2=input("x2 degerini girin:");
x3=input("x3 degerini girin:");
x4=input("x4 degerini girin:");
x5=input("x5 degerini girin:");
x6=input("x6 degerini girin:");
% x7=input("x7 degerini girin:");
% x8=input("x8 degerini girin:");
% x9=input("x9 degerini girin:");
% x10=input("x10 degerini girin:");
while iterasyonsayisi>=iterasyon
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
        %1.iterasyon 7.adım
        
%         sonuc=adim(w7,x7);
%         v7=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v6'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w8=omega(beklenenler(7),v7,w7,c,x7);
%           
%         %1.iterasyon 8.adım
%         
%         sonuc=adim(w8,x8);
%         v8=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v8'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w9=omega(beklenenler(8),v8,w8,c,x8);
% 
%         %1.iterasyon 9.adım
%         
%         sonuc=adim(w9,x9);
%         v9=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v9'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w10=omega(beklenenler(9),v9,w9,c,x9);
%           
%         %1.iterasyon 10.adım
%         
%         sonuc=adim(w10,x10);
%         v10=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v10'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w11=omega(beklenenler(10),v10,w10,c,x10);
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

        %1.iterasyon 7.adım
        
%         sonuc=adim(w7,x7);
%         v7=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v6'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w8=omega(beklenenler(7),v7,w7,c,x7);
%           
%         %1.iterasyon 8.adım
%         
%         sonuc=adim(w8,x8);
%         v8=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v8'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w9=omega(beklenenler(8),v8,w8,c,x8);
% 
%         %1.iterasyon 9.adım
%         
%         sonuc=adim(w9,x9);
%         v9=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v9'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w10=omega(beklenenler(9),v9,w9,c,x9);
%           
%         %1.iterasyon 10.adım
%         
%         sonuc=adim(w10,x10);
%         v10=aktivasyonfonksiyonu(sonuc);
%         fprintf("%d. iterasyon v10'in sonuc: %d aktivasyon fonksiyonu sonrasi: %d\n",iterasyon,sonuc,v1)
%         w11=omega(beklenenler(10),v10,w10,c,x10);
    end


    iterasyon=iterasyon+1;
end