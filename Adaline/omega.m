function [out] = omega(last_value,c,expect,consequence,diff,x)
    out=last_value+c*(expect-consequence)*diff*x;
end