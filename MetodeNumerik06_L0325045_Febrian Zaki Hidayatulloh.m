tic;
Aug = [A b];
for k = 1:n-1
    for i = k+1:n
        m = Aug(i,k) / Aug(k,k);
        Aug(i,:) = Aug(i,:) - m * Aug(k,:);
    end
end
x_gauss = zeros(n,1);
x_gauss(n) = Aug(n,n+1) / Aug(n,n);
for i = n-1:-1:1
    x_gauss(i) = (Aug(i,n+1) - Aug(i,i+1:n) * x_gauss(i+1:n)) / Aug(i,i);
end
t_gauss = toc;
disp('Matriks segitiga atas (Gauss):'); disp(Aug);
for i = 1:n, fprintf('%s = %.4f\n', nama{i}, x_gauss(i)); end
