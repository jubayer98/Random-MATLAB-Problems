x = linspace(0, pi, 100);

y1 = sin(x);
y2 = sin(2*x);
y3 = sin(3*x);
y4 = sin(4*x);

subplot(4, 2, 1);
plot(x, y1);
title('Graph of sin(x)');
grid;

subplot(4, 2, 2);
plot(x, y2);
title('Graph of sin(2x)');
grid;

subplot(4, 1, 3);
plot(x, y3);
title('Graph of sin(3x)');
grid;

subplot(4, 1, 4);
plot(x, y4);
title('Graph of sin(4x)');
grid;