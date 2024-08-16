function [out] = aktivasyonfonksiyonu(sonuc)
    if sonuc>0
        out=1;
    elseif sonuc<=0
        out=-1;
    end
end