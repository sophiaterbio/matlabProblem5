n = 0:1:199;
x = input('Enter a number: ');
plot(n,x, '-.r')
hold on
for n = 1:1:200   
    n1 = n+1;
    n2 = n+2;
    n3 = n-1;
    n4 = n-2;
    
    if n == 1
        y = -1.5.*x(n) + 2.*x(n1) - 0.5.*x(n2);
        plot (n,y, '-.g*');
    elseif 1 < n && n <= 199
        y = 0.5.*x(n1) - 0.5.*x(n3);
        plot (n,y,'-.g*');
    else
        y = 1.5.*x(n) - 2.*x(n3) + 0.5.*x(n4);
        plot (n,y,'-.g*');
    end
end

legend('x(n)', 'y(n)')