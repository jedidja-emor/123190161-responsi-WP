function [vectorWP] = hitungWP(x,k,w)
%tahapan pertama, perbaikan bobot
[m,n]=size (x); %inisialisasi ukuran x
w=w./sum(w); %membagi bobot per kriteria dengan jumlah total seluruh bobot

%tahapan kedua, melakukan perhitungan vektor(S) per baris (alternatif)
for j=1:n
    if k(j)==0, w(j)=-1*w(j);
    end
end
for i=1:m
    S(i)=prod(x(i,:).^w);
end

%tahapan ketiga, proses perangkingan
vectorWP = S/sum(S);

end