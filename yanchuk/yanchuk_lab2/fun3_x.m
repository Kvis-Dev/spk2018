function [ fx ] = fun3_x( x )

fx = (6*(6*(x-3).^2).^(1./2))./((x-1).^2+8);
fx = -1*fx;

end

