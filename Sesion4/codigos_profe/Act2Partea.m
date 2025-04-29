clear

x_data = [1 2 3];
y_data = [4 5 8];

x_eval = 5; % valor a evaluar

l = zeros(size(x_data));
n = length(x_data);
lnum = ones(size(x_data));
lden = ones(size(x_data));

for i = 1:n
for j = 1:n
    if j~=i
        lnum(i) = lnum(i)*(x_eval-x_data(j));
        lden(i) = lden(i)*(x_data(i)-x_data(j));
        l(i) = lnum(i)/lden(i);
    end
end
end
l = l .* y_data;
l = sum(l)




