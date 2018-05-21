x = linspace(0, 4*pi, 100);
y = sin(x);
plot(y)
plot(x, y)

stem(y)
stem(x, y)

title('This is the sinus function');
xlabel('x(secs)');
ylabel('sin(x)');