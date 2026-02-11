% 
% clc; clear;
% 
% 
% toleransi = 1e-9;
% pembanding = 0
% 
% i = 0;
% j = 100;
% iterasi = 0;
% 
% while abs(j - f(j)) > toleransi
%     iterasi = iterasi + 1;
%     j = f(j);
%     fprintf('nilai j : %.9f pada iterasi i:%d\n', j,iterasi);
% end
% 
% fprintf('Hasil akar yaitu: %d',j);
% 
% 
% function y=f(x)
%     y=(x+4)/(x+1);
% end
% 
clc; clear;

f = @(x) (x+4)/(x+1);


toleransi = 1e-9;
maks_iterasi = 1000;

x_lama = 100;     % tebakan awal
iterasi = 0;

while iterasi < maks_iterasi
    
    x_baru = f(x_lama);
    error = abs(x_baru - x_lama);
    
    iterasi = iterasi + 1;
    
    fprintf('Iterasi %3d | x = %.12f | error = %.3e\n', ...
            iterasi, x_baru, error);
    
    if error < toleransi
        break
    end
    
    x_lama = x_baru;
end

if iterasi == maks_iterasi
    fprintf('\nMetode tidak konvergen dalam %d iterasi\n', maks_iterasi);
else
    fprintf('\nAkar konvergen ke: %.12f\n', x_baru);
end


% function y = f(x)
%     y = (x+4)/(x+1);
% end
% f = @(x) (x+4)/(x+1);