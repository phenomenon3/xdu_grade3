function []= Spectrums(y,Num,fs)
u = fftshift(fft(y,Num)*2/Num);
w=(-Num/2:1:Num/2-1)*fs/Num; %Ë«±ß  
%w = (0:L-1)'*fs/L - 1/2*fs;
subplot(1,2,2);
plot(w,abs(u));
title('ÐÅºÅÆµÆ×');
xlabel('ÆµÂÊ/Hz');ylabel('·ù¶È/V');

xlim([-1000000 1000000])
ylim([0.0 6])
end

