# tugas 
# menggunakan readxln
library(xlsx)
excel_sheets('ukt.xlsx')
ukt <- read_xlsx('ukt.xlsx',sheet = "Sheet1")
class(ukt)
ukt

#1. Range
#Range = Nilai tengah kelas terakhir - 
#        nilai tengah kelas pertama
r1 = 19500000 -1000000
print(r1)

#2. Mean 
sumFixi <- sum(ukt$Xi.Fi)
print(sumFixi)
SumFrekuensi <- sum(ukt$F)
print(SumFrekuensi)
Mean <- sumFixi/SumFrekuensi
print(Mean)

#3. Median 

#Terletak pada interval 4.200.000 - 6.200.000 
#Tepi bawah  = 4.199.999,5 
#Frekuensi kumulatif sebelumnya adalah 38 
#Frekuensi kelas median adalah 97 
#Panjang kelas adalah 20 

#Secara matematis bisa diringkas sebagai berikut: 
xii<-41999995 
n <- 200 
fkii<-38 
fi<-97 
p<-20 
men <- xii + ((n/2-38)/97) * p
print(men)

# 4. Modus
#Dari tabel diatas, dapat diketahui bahwa modus 
#terletak pada kelas interval ketiga 
#(4.200.000 - 6.200.000) 
#karena kelas tersebut memiliki 
#frekuensi sebesar 97 (Fm = 97)

Fm <- 97 #Fk  modusnya
Tb <- 4200000 -0.5
print(Tb) #tepi bawah 
Fm_Selanjutnya<- 32 #frekeunsi kelas sesudahnya
Fm_Sebelumnya <- 0 #frekuensi kelas sebelumnya
P_Interval <- 9 #panjang interval 

b1 <- Fm - Fm_Sebelumnya
print(b1)
b2 <- Fm - Fm_Selanjutnya
print(b2)
#Mo = b + (𝑏1 : (b1 +b2)) p
Modus<- Tb + (b1/(b1+b2))*P_Interval
print(Modus) #hasil modus

# 5. Simpangan Rata rata
SR <- 597491964375000 / 200 
print(SR)

# 6. Simpangan baku 
s <- sqrt(SR)
print(s)
