%Dragon constant Growth Model

%Assumes well fed every year
%Timescale of yearly growth

ybest=zeros(1,250)
ymid=zeros(1,250)
yworst=zeros(1,250)

% Initial data, weight in kg
ybest(1)=10;
ymid(1)=10;
yworst(1)=10;

rbest=4;
rmid=3.5;
rworst=3;

t=zeros(1,250);
t(1)=1;

for i=1:250;
  t(i+1)=t(i)+1;
  % Constant Growth Rate
  ybest(i+1)=rbest*ybest(i);
  ymid(i+1)=rmid*ymid(i);
  yworst(i+1)=rworst*yworst(i);
  
  %Normalizing Factor after max weight is reached.
  if(ybest(i+1)>7000)
  ybest(i+1)=7000+rand*10;
  endif
  if(ymid(i+1)>7000)
  ymid(i+1)=7000+rand*10;
  endif
  if(yworst(i+1)>7000)
  yworst(i+1)=7000+rand*10;
  endif
endfor

% Linear Growth Rate

LinB=175*t;
LinM=70*t;
LinW=25*t;

for i=1:251
  if(LinB(i)>7000)
  LinB(i)=7000+rand*25;
endif
 if(LinM(i)>7000)
  LinM(i)=7000+rand*25;
endif
 if(LinW(i)>7000)
  LinW(i)=7000+rand*25;
endif
endfor



% UNCOMMENT#1

##plot(t,ybest,'k',t,ymid,'b',t,yworst,'m',LinB,'c',LinM,'g',LinW,'r')
##title('Dragons Weight with constant growth rate assumption (in kg)')
##xlabel('Years')
##ylabel('kg')
##xlim([0 250])
##
##lgd = legend({'Best-Case Constant Growth Rate','Mid-Case Constant Growth Rate',
##'Worst-Case Constant Growth Rate','Linear Growth Best-Case',
##'Linear Growth Mid-Case','Linear Growth Worst-Case'},'Location', 'southeast');
##
##title(lgd,'Dragon Comparisons')

% UNCOMMENT#1




% Assuming a 3000 kg Dragon needs 40000 Calories or 40
% per day and scaling factor of (40000*365)/3000
% Chart showing Caloric needs of Dragons


CalbyKG=73/15;

% Initial data, weight in kg
CalBC=CalbyKG*ybest;
CalMC=CalbyKG*ymid;
CalWC=CalbyKG*yworst;


% Linear Growth Rate

CalLinB=CalbyKG*LinB;
CalLinM=CalbyKG*LinM;
CalLinW=CalbyKG*LinW;


% UNCOMMENT#1
##
##  plot(t,CalBC,'k',t,CalMC,'b',t,CalWC,'m',CalLinB,'c',CalLinM,'g',CalLinW,'r')
##title('Dragons Caloric needs per Year(in  KCal)')
##xlabel('Years')
##ylabel('Calories')
##
##
##lgd = legend({'Best-Case Constant Growth Rate','Mid-Case Constant Growth Rate',
##'Worst-Case Constant Growth Rate','Linear Growth Best-Case',
##'Linear Growth Mid-Case','Linear Growth Worst-Case'},'Location', 'southeast');

% UNCOMMENT#1





% STOCASTIC MODEL WITH GREAT GOOD AVG BAD TERRIBLE YEARS
  
  
% UNCOMMENT#2
  
##  
##y=zeros(103,250)
##
##for j=1:100;
##% Initial data, weight in kg
##y(j,1)=10;
##
##
##t=zeros(1,250);
##t(1)=1;
##
##for i=1:250;
##  t(i+1)=t(i)+1;
##  u=rand
##  
##  % Great year
##  if(u<0.25)
##  y(j,i+1)=2*t(i+1)+y(j,i);
##  
##  % Good year
##  elseif(0.25<u<0.4)
##  y(j,i+1)=1*t(i+1)+y(j,i);
##  
## 
##  
##  % Bad year
##  elseif(0.6<u<0.75)
##  y(j,i+1)=0.6*t(i+1)+y(j,i);
##  
##  % Terrible year
##  elseif(0.75<u)
##  y(j,i+1)=0.15*t(i+1)+y(j,i);
##  
## % Average year
##  else
##  y(j,i+1)=0.85*t(i+1)+y(j,i);
##  
##  
##endif
##
##if( y(j,i+1)>7000)
##y(j,i+1)=7000+rand*25;
##endif
## 
##  
##endfor
##
##
##
##
##hold on
##plot(t,y(j,:))
##title('Dragons w/ Uniform Stochastic Years on linear, 50 Trials')
##hold on
##xlabel('Years')
##ylabel('kg')
##endfor
## 
##% Ideal case
##
##for i=1:250
##  y(101,i+1)=2*t(i+1)+y(101,i);
##  if( y(101,i+1)>7000)
##y(101,i+1)=7000+rand*25;
##endif
##endfor
##p1=plot(t,y(101,:),'b--d')
##
##
##
##% worst case
##
##for i=1:250
##  y(102,i+1)=0.15*t(i+1)+y(102,i);
##  if( y(102,i+1)>7000)
##y(102,i+1)=7000+rand*25;
##endif
##endfor
##p3=plot(t,y(102,:),'r--x')
## 
## % Avg case
##
##for i=1:250
##  y(103,i+1)=0.85*t(i+1)+y(103,i);
##  if( y(103,i+1)>7000)
##y(103,i+1)=7000+rand*25;
##endif
##endfor
##p2=plot(t,y(103,:),'c--o')
##xlabel('Years')
##ylabel('kg')
##legend([p1 p2 p3],{'Best-Case','Avg-Case','Worst-Case'},'location','southeast')

% UNCOMMENT#2
  
  
  
  
  
  
  
 % Logistical Model of dragon growth dw/dt = k*w(a-w)


% UNCOMMENT#3

 
##  w=zeros(103,250)
## 
## rGr=0.15
## rgo=0.11
## ravg=0.08
## rba=0.05
## rwo=0.01
## 
## % Adding stocasticity
## for j=1:100
## 
## for i=1:250
##   
##   
##u=rand
##  
##  % Great year
##  if(u<0.2)
##  r=rGr
##  
##  % Good year
##  elseif(0.2<u<0.4)
##  r=rgo
##  
## 
##  
##  % Bad year
##  elseif(0.6<u<0.8)
##  r=rba
##  
##  % Terrible year
##  elseif(0.8<u)
##  r=rwo
##  
## % Average year
##  else
##  r=ravg
##  endif
##   
## %w(j,i+1)=7000/(1+699*(exp(-r*(t(i+1)))));
## w(j,i+1)=w(j,i)+w(j,i)*r*(1-(w(j,i)/7000))+10;
## 
## endfor
## hold on
## plot(t,w(j,:))
## title('Dragon Logisitc Size Models w/ Stocasticity')
## xlim([0 250])
## 
## endfor
##
##
##
## 
## % Best case
## r=rGr
## for i=1:250
##   w(101,i+1)=w(101,i)+w(101,i)*r*(1-(w(101,i)/7000))+10;
## endfor
## p1=plot(t,w(101,:),'b--d')
## hold on
##  % Avg case
## r=ravg
## for i=1:250
##   w(102,i+1)=w(102,i)+w(102,i)*r*(1-(w(102,i)/7000))+10;
## endfor
## p2=plot(t,w(102,:),'b--o')
## hold on
##  % worst case
## r=rwo
## for i=1:250
##   w(103,i+1)=w(103,i)+w(103,i)*r*(1-(w(103,i)/7000))+10;
## endfor
## p3=plot(t,w(103,:),'r--x')
## hold on
## xlabel('Years')
## ylabel('kg')
##legend([p1 p2 p3],{'Best-Case','Avg-Case','Worst-Case'},'location','southeast')
##
##

 %UNCOMMENT#3
 
 
 
 % Age based model dw/dt = k/t
 % weight=w= ( 30/ln(2) )*ln(t) + 10
 % Assuming it reaches full size around 150 years old
 
 % UNCOMMENT#4
 

 
##
## 
##  w=zeros(103,250)
## 
## rGr=1.48
## rgo=1.32
## ravg=1.15
## rba=0.96
## rwo=0.85
## 
## % Adding stocasticity
## for j=1:100
## 
## for i=1:250
##   
##   
##u=rand
##  
##  % Great year
##  if(u<0.2)
##  r=rGr
##  
##  % Good year
##  elseif(0.2<u<0.4)
##  r=rgo
##  
## 
##  
##  % Bad year
##  elseif(0.6<u<0.8)
##  r=rba
##  
##  % Terrible year
##  elseif(0.8<u)
##  r=rwo
##  
## % Average year
##  else
##  r=ravg
##  endif
##   
## 
## w(j,i+1)=w(j,i)+w(j,i)*(r/(t(i)))+10;
## if(w(j,i+1)>7000)
## w(j,i+1)=7000+rand*25;
## endif
## 
## endfor
## hold on
## plot(t,w(j,:))
## title('Dragon Age-Based Size Models w/ Stocasticity')
## xlim([0 250])
## 
## endfor
##
##
##
## 
## % Best case
## r=rGr
## for i=1:250
##   w(101,i+1)=w(101,i)+w(101,i)*r/(t(i))+10;;
##    if(w(101,i+1)>7000)
## w(101,i+1)=7000+rand*25;
## endif
## endfor
## p1=plot(t,w(101,:),'b--d')
## hold on
##  % Avg case
## r=ravg
## for i=1:250
##   w(102,i+1)=w(102,i)+w(102,i)*r/(t(i))+10;;
##    if(w(102,i+1)>7000)
## w(102,i+1)=7000+rand*25;
## endif
## endfor
## p2=plot(t,w(102,:),'b--o')
## hold on
##  % Best case
## r=rwo
## for i=1:250
##   w(103,i+1)=w(103,i)+w(103,i)*r/(t(i))+10;
##    if(w(103,i+1)>7000)
## w(103,i+1)=7000+rand*25;
## endif
## endfor
## p3=plot(t,w(103,:),'r--x')
## hold on
## xlabel('Years')
## ylabel('kg')
## legend([p1 p2 p3],{'Best-Case','Avg-Case','Worst-Case'},'location','southeast')
 
% UNCOMMENT#4




% UNCOMMENT#5



##
##% Position Based Model, eg. Displacement
##% w(j,i+1)=w(j,i)*(1+r*(1-(w(j,i)/7000)))+10 + M(i)*(t(i))^2
##% M(i)= Magic level at time i
##% Initial Weight = 10

##  w=zeros(103,250)
##  
##  
## rGr=1.48
## rgo=1.32
## ravg=1.15
## rba=0.86
## rwo=0.62
## 
## % Adding stocasticity
## for j=1:100
## 
## for i=1:250
##   
##u=rand
##v=rand
##  
##  % Great year
##  if(u<0.2)
##  r=rGr
##  
##  % Good year
##  elseif(0.2<u<0.4)
##  r=rgo
##  
## 
##  
##  % Bad year
##  elseif(0.6<u<0.8)
##  r=rba
##  
##  % Terrible year
##  elseif(0.8<u)
##  r=rwo
##  
## % Average year
##  else
##  r=ravg
##endif
##
##
##
##  if(v<0.01)&&(mod(i,10)==1)
##  M=5.4*(t(i)^2)
##  elseif(v>0.2)&&(mod(i,10)==1)
##  M=0
##  elseif(mod(i,10)==1)
##  M=-0.0001*sqrt(t(i))
## endif
##   
## 
## %w(j,i+1)=w(j,i)*(1+r*(1-(w(j,i)/7000)))+10 + M*(t(i))^2;
## 
## 
## 
## if(i==1)
## w(j,i)=10+rand*2;
## endif
## 
## w(j,i+1)=w(j,i)+t(i)*r*(1-(w(j,i)/7000))+10 + M;
## 
## if(w(j,i+1)>7000)
## w(j,i+1)=7000+rand*25;
## endif
## 
## endfor
## hold on
## plot(t,w(j,:))
## title('Dragon Size Position-Based Model with Magical Acceleration factor')
## xlim([0 250])
## 
## endfor
##
##
##
## 
## % Best case
## r=rGr
## for i=1:250
##   M=5.4
##   w(101,i+1)=w(101,i)+t(i)*r*(1-(w(101,i)/7000))+10 + M*t(i)^2;
##    if(w(101,i+1)>7000)
## w(101,i+1)=7000+rand*25;
## endif
## endfor
## p1=plot(t,w(101,:),'b--d')
## hold on
## 
##  % Avg case
## r=ravg
## for i=1:250
##   M=0
##   w(102,i+1)=w(102,i)+t(i)*r*(1-(w(102,i)/7000))+10 + M*t(i);
##    if(w(102,i+1)>7000)
## w(102,i+1)=7000+rand*25;
## endif
## endfor
## p2=plot(t,w(102,:),'b--o')
## hold on
## 
##  % Worst case
## r=rwo
## for i=1:250
##   M=-0.0005
##   w(103,i+1)=w(103,i)+t(i)*r*(1-(w(103,i)/7000))+10 + M*sqrt(t(i));
##    if(w(103,i+1)>7000)
## w(103,i+1)=7000+rand*25;
## endif
## endfor
## p3=plot(t,w(103,:),'r--x')
## hold on
## 
## legend([p1 p2 p3],{'Best-Case','Avg-Case','Worst-Case'},'location','southeast')

  % UNCOMMENT#5

  
  
  
  
  % Logisitic Growth Model with Magic Growth rate (Same As logistic but with changes to emphasize magic)
  
  
  % UNCOMMENT#6

  w=zeros(103,250)
 
 rGr=0.45
 rgo=0.15
 ravg=0.04
 rba=0.02
 rwo=0.01
 
 % Adding stocasticity
 for j=1:100
 
 for i=1:250
   
   
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
   
 %w(j,i+1)=7000/(1+699*(exp(-r*(t(i+1)))));
 w(j,i+1)=w(j,i)+w(j,i)*r*(1-(w(j,i)/7000))+10;
 
endfor

 hold on
 plot(t,CalbyKG.*w(j,:))
 title('Dragon Logisitc Calorie Model with Magic Factor, 100 trials')
 xlim([0 250])
 
 endfor



 
 % Best case
 r=rGr
 for i=1:250
   w(101,i+1)=w(101,i)+w(101,i)*r*(1-(w(101,i)/7000))+10;
 endfor
 p1=plot(t,CalbyKG.*w(101,:),'b--d')
 hold on
  % Avg case
 r=ravg
 for i=1:250
   w(102,i+1)=w(102,i)+w(102,i)*r*(1-(w(102,i)/7000))+10;
 endfor
 p2=plot(t,CalbyKG.*w(102,:),'b--o')
 hold on
  % worst case
 r=rwo
 for i=1:250
   w(103,i+1)=w(103,i)+w(103,i)*r*(1-(w(103,i)/7000))+10;
 endfor
 p3=plot(t,CalbyKG.*w(103,:),'r--x')
 hold on
 xlabel('Years')
 ylabel('kCal')
legend([p1 p2 p3],{'Best-Case','Avg-Case','Worst-Case'},'location','southeast')

w1=CalbyKG.*w;

% UNCOMMENT#6