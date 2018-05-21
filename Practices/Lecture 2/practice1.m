x = linspace(0, 4*pi, 100); %0 to 4*pi is range and 100 is samples
y = sin(x);

plot(y)

%y1 = exp(-x/3);
%y2 = y*y1;
%plot(y2) %got error because use *

y1 = exp(-x/3);
y2 = y.*y1;
plot(y2) %corrected for .*

