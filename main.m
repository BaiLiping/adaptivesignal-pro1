[z, fs] = audioread('EQ2401project1data2024.wav');
soundsc(z,fs);
%plot(z);
% plot(periodogram(z,hanning(length(z)), fs));
thre = 0.23;
silent=find(abs(z)< thre);
noisees = z(silent);
nmean= abs(mean(noisees));
varnoise = var(noisees);

