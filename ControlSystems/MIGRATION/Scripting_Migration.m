B1= ([0.1 0.5 1.7]);
M1=([1000 5 340]);
for i=1:3
    sys = tf([1/M1(i)],[1,B1(i)/M1(i)])
    figure(i);
    subplot(2,1,1);
    impulse(sys);
    title('Impulse Input');
    subplot(2,1,2);
    step(sys);
    title('Step Input');
    [p,z]= pzmap(sys);
    figure(4)
    zplane(z,p);
    title('Pole Zero plot');
    hold;
end