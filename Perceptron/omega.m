function [w_out] = omega(v_beklenen,v_cikis,w_son,c,x_son)
    w_out=w_son+0.5*c*(v_beklenen-v_cikis)*x_son;
end