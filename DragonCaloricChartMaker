 % Logisitic Growth Model with Magic Growth rate (Same As logistic but with changes to emphasize magic)
  
  
% Assuming a 3000 kg Dragon needs 40000 Calories or 40
% per day and scaling factor of (40000*365)/3000
% Chart showing Caloric needs of Dragons


CalbyKG=73/15;
t=linspace(0,250,251);

  w=zeros(103,250)
 
 rGr=0.45
 rgo=0.15
 ravg=0.04
 rba=0.02
 rwo=0.01
 figure(1)
 % Adding stocasticity
 for j=1:100
 
 for i=1:(250)
   
   
u=rand
v=rand
  
  % Great year
  if(u<0.2)
  r=rGr*v^2
  
  % Good year
  elseif(0.2<u<0.4)
  r=rgo*v^2
  
 
  
  % Bad year
  elseif(0.6<u<0.8)
  r=rba*v^2
  
  % Terrible year
  elseif(0.8<u)
  r=rwo*v^2
  
 % Average year
  else
  r=ravg*v^2
  endif
   
 
 w(j,i+1)=w(j,i)+w(j,i)*r*(1-(w(j,i)/7000))+10;
 
endfor

 hold on
 plot(t,w(j,:))

 
 endfor


 title('Dragon Logisitc Calorie Model with Magic Factor, 100 trials')
 xlim([0 250])
 
 % Best case
 r=rGr
 
 for i=1:(250)
   w(101,i+1)=w(101,i)+w(101,i)*r*(1-(w(101,i)/7000))+10;
 endfor
 p1=plot(t,w(101,:),'b--d')
 hold on
 
 
 
  % Avg case
 r=ravg
 

 for i=1:(250)
   w(102,i+1)=w(102,i)+w(102,i)*r*(1-(w(102,i)/7000))+10;
 endfor
 p2=plot(t,w(102,:),'b--o')
 hold on
 
 
 
  % worst case
 r=rwo
 

 for i=1:(250)
   w(103,i+1)=w(103,i)+w(103,i)*r*(1-(w(103,i)/7000))+10;
 endfor
 p3=plot(t,w(103,:),'r--x')
 hold on
 xlabel('Years')
 ylabel('kg')
legend([p1 p2 p3],{'Best-Case','Avg-Case','Worst-Case'},'location','southeast')



% UNCOMMENT#6

avgyearsmall=zeros(100,1)
avgyearmed=zeros(100,1)
avgyearlarge=zeros(100,1)


%Finding Average Age Dragon Is greater than small

for i=1:100
  for j=1:250
    if( w(i,j)>1000)
    avgyearsmall(i)=j;
   break
    endif
  endfor
  endfor

  for i=1:100
  for j=1:250
    if( w(i,j)>2500)
    avgyearmed(i)=j;
   break
    endif
  endfor
endfor

for i=1:100
  for j=1:250
    if( w(i,j)>4500)
    avgyearlarge(i)=j;
   break
    endif
  endfor
endfor


largeyr=0
smallyr=0
medyr=0

for i=1:100
  largeyr=largeyr+avgyearlarge(i)
  medyr=medyr+avgyearmed(i)
  smallyr=smallyr+avgyearsmall(i)
  
  endfor

  largeyr=largeyr/100
  smallyr=smallyr/100
  medyr=medyr/100

  
  
  
  

% Caloric needs with stocastity table can be found in w1 below

w1=CalbyKG.*w;

Asmall=zeros(103,1)
AMed=zeros(103,1)
ALg=zeros(103,1)
AMass=zeros(103,1)

for i=1:48

  Asmall=[Asmall w1(:,i)]
  
  endfor

for i=49:78

  AMed=[AMed w1(:,i)]
  
  endfor

for i=79:105

  ALg=[ALg w1(:,i)]
  
endfor

for i=105:250

  AMass=[AMass w1(:,i)]
  
endfor

ALg(:,1) = []
AMass(:,1) = []
AMed(:,1) = []
Asmall(:,1) = []




% CALORIES FOR ANIMALS in KCal

% Region Temperate

Rabbit=3.361
Deer=105.6
Cow=1565.14

% Region Artic

Seal=455.62
Bear=436.01
Mammoth=7843.508

% Region Arid

Gerbil=0.03
Coyote=20.024
Camel= 904.5


t1=linspace(0,48,48)
SmAnTemp=(1/(Rabbit*52)).*Asmall
SmAnArt=(1/(Seal*52)).*Asmall
SmAnArid=(1/(Gerbil*52)).*Asmall

t2=linspace(48,78,30)
MdAnTemp=(1/(52*Deer)).*AMed
MdAnArt=(1/(52*Bear)).*AMed
MdAnArid=(1/(52*Coyote)).*AMed

t3=linspace(78,105,27)
LgAnTemp=(1/(52*Cow)).*ALg
LgAnArt=(1/(52*Mammoth)).*ALg
LgAnArid=(1/(52*Camel)).*ALg

t4=linspace(105,250,146)
MSAnTemp=(1/(52*Cow)).*AMass
MSAnArt=(1/(52*Mammoth)).*AMass
MSAnArid=(1/(52*Camel)).*AMass



% Small Dragon animal Plots


figure(2)
for i=1:100
  
plot(t1,SmAnTemp(i,:))
hold on
endfor

AvgSmTemp=zeros(1,1)
for i=1:48
  AvgSmTemp=[AvgSmTemp sum(SmAnTemp(:,i))]
endfor
AvgSmTemp(1)=[]
pAvgSmTemp=plot(t1,(1/100).*AvgSmTemp,'b--o')
legend([pAvgSmTemp],{'Average-Case'},'location','northwest')

title('Temperate Region Average Rabbit consumption per week,Yearly. Small Dragons')
xlabel('Year')
ylabel('Rabbits(in population)')
xlim([0 48])


figure(3)
for i=1:100
  
plot(t1,SmAnArt(i,:))
hold on
endfor

AvgSmArt=zeros(1,1)
for i=1:48
  AvgSmArt=[AvgSmArt sum(SmAnArt(:,i))]
endfor
AvgSmArt(1)=[]
pAvgSmArt=plot(t1,(1/100).*AvgSmArt,'b--o')
legend([pAvgSmArt],{'Average-Case'},'location','northwest')

title('Artic Region Average Seal consumption per week,Yearly. Small Dragons')
xlabel('Year')
ylabel('Seals(in population)')
xlim([0 48])


 figure(4)
for i=1:100

plot(t1,SmAnArid(i,:))
hold on
endfor

AvgSmAr=zeros(1,1)
for i=1:48
  AvgSmAr=[AvgSmAr sum(SmAnArid(:,i))]
endfor
AvgSmAr(1)=[]
pAvgSmAr=plot(t1,(1/100).*AvgSmAr,'b--o')
legend([pAvgSmAr],{'Average-Case'},'location','northwest')

title('Arid Region Average Gerbil consumption per week,Yearly. Small Dragons')
xlabel('Year')
ylabel('Gerbils(in population)')
xlim([0 48])


% Medium Dragon Animal Plots

figure(5)

for i=1:100

plot(t2,MdAnTemp(i,:))
hold on
endfor

AvgMDTemp=zeros(1,1)
for i=1:30
  AvgMDTemp=[AvgMDTemp sum(MdAnTemp(:,i))]
endfor
AvgMDTemp(1)=[]
pAvgMdTemp=plot(t2,(1/100).*AvgMDTemp,'b--o')
legend([pAvgMdTemp],{'Average-Case'},'location','northwest')

title('Temperate Region Average Deer consumption per week,Yearly. Medium Dragons')
xlabel('Year')
ylabel('Deer(in population)')
xlim([48 78])


figure(6)
for i=1:100

plot(t2,MdAnArt(i,:))
hold on
endfor

AvgMDArt=zeros(1,1)
for i=1:30
  AvgMDArt=[AvgMDArt sum(MdAnArt(:,i))]
endfor
AvgMDArt(1)=[]
pAvgMdArt=plot(t2,(1/100).*AvgMDArt,'b--o')
legend([pAvgMdArt],{'Average-Case'},'location','northwest')

title('Artic Region Average Bear consumption per week,Yearly. Medium Dragons')
xlabel('Year')
ylabel('Bears(in population)')
xlim([48 78])


figure(7)
for i=1:100

plot(t2,MdAnArid(i,:))
hold on
endfor

AvgMDArid=zeros(1,1)
for i=1:30
  AvgMDArid=[AvgMDArid sum(MdAnArid(:,i))]
endfor
AvgMDArid(1)=[]
pAvgMdArid=plot(t2,(1/100).*AvgMDArid,'b--o')
legend([pAvgMdArid],{'Average-Case'},'location','northwest')

title('Arid Region Average Coyotes consumption per week,Yearly. Medium Dragons')
xlabel('Year')
ylabel('Coyotes(in population)')
xlim([48 78])


% Large Dragons Animal Plots

figure(8)

for i=1:100

plot(t3,LgAnTemp(i,:))
hold on
endfor

AvgLgTemp=zeros(1,1)
for i=1:27
  AvgLgTemp=[AvgLgTemp sum(LgAnTemp(:,i))]
endfor
AvgLgTemp(1)=[]
pAvgLgTemp=plot(t3,(1/100).*AvgLgTemp,'b--o')
legend([pAvgLgTemp],{'Average-Case'},'location','northwest')

title('Temperate Region Average Cows consumption per week,Yearly. Large Dragons')
xlabel('Year')
ylabel('Cows(in population)')
xlim([78 105])


figure(9)
for i=1:100

plot(t3,LgAnArt(i,:))
hold on
endfor

AvgLgArt=zeros(1,1)
for i=1:27
  AvgLgArt=[AvgLgArt sum(LgAnArt(:,i))]
endfor
AvgLgArt(1)=[]
pAvgLgArt=plot(t3,(1/100).*AvgLgArt,'b--o')
legend([pAvgLgArt],{'Average-Case'},'location','northwest')

title('Artic Region Average Mammoth consumption per week,Yearly. Large Dragons')
xlabel('Year')
ylabel('Mammoths(in population)')
xlim([78 105])


figure(10)
for i=1:100

plot(t3,LgAnArid(i,:))
hold on
endfor

AvgLgArid=zeros(1,1)
for i=1:27
  AvgLgArid=[AvgLgArid sum(LgAnArid(:,i))]
endfor
AvgLgArid(1)=[]
pAvgLgArid=plot(t3,(1/100).*AvgLgArid,'b--o')
legend([pAvgLgArid],{'Average-Case'},'location','northwest')

title('Arid Region Average Camels consumption per week,Yearly. Large Dragons')
xlabel('Year')
ylabel('Camels(in population)')
xlim([78 105])

% Massive Dragons Animal Plots

figure(11)

for i=1:100

plot(t4,MSAnTemp(i,:))
hold on
endfor

AvgMSTemp=zeros(1,1)
for i=1:146
  AvgMSTemp=[AvgMSTemp sum(MSAnTemp(:,i))]
endfor
AvgMSTemp(1)=[]
pAvgMSTemp=plot(t4,(1/100).*AvgMSTemp,'b--o')
legend([pAvgMSTemp],{'Average-Case'},'location','northwest')

title('Temperate Region Average Cows consumption per week,Yearly. Massive Dragons')
xlabel('Year')
ylabel('Cows(in population)')
xlim([105 250])


figure(12)
for i=1:100

plot(t4,MSAnArt(i,:))
hold on
endfor

AvgMSArt=zeros(1,1)
for i=1:146
  AvgMSArt=[AvgMSArt sum(MSAnArt(:,i))]
endfor
AvgMSArt(1)=[]
pAvgMSArt=plot(t4,(1/100).*AvgMSArt,'b--o')
legend([pAvgMSArt],{'Average-Case'},'location','northwest')

title('Artic Region Average Mammoth consumption per week,Yearly. Massive Dragons')
xlabel('Year')
ylabel('Mammoths(in population)')
xlim([105 250])


figure(13)
for i=1:100

plot(t4,MSAnArid(i,:))
hold on
endfor

AvgMSArid=zeros(1,1)
for i=1:146
  AvgMSArid=[AvgMSArid sum(MSAnArid(:,i))]
endfor
AvgMSArid(1)=[]
pAvgMSArid=plot(t4,(1/100).*AvgMSArid,'b--o')
legend([pAvgMSArid],{'Average-Case'},'location','northwest')

title('Arid Region Average Camels consumption per week,Yearly. Massive Dragons')
xlabel('Year')
ylabel('Camels(in population)')
xlim([105 250])
