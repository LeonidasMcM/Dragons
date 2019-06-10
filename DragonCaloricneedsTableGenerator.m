  % Logisitic Growth Model with Magic Growth rate (Same As logistic but with changes to emphasize magic)
  
  
% Assuming a 3000 kg Dragon needs 40000 Calories or 40
% per day and scaling factor of (40000*365)/3000
% Chart showing Caloric needs of Dragons


CalbyKG=73/15;


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
 plot(t,w(j,:))
 title('Dragon Logisitc Calorie Model with Magic Factor, 100 trials')
 xlim([0 250])
 
 endfor



 
 % Best case
 r=rGr
 for i=1:250
   w(101,i+1)=w(101,i)+w(101,i)*r*(1-(w(101,i)/7000))+10;
 endfor
 p1=plot(t,w(101,:),'b--d')
 hold on
  % Avg case
 r=ravg
 for i=1:250
   w(102,i+1)=w(102,i)+w(102,i)*r*(1-(w(102,i)/7000))+10;
 endfor
 p2=plot(t,w(102,:),'b--o')
 hold on
  % worst case
 r=rwo
 for i=1:250
   w(103,i+1)=w(103,i)+w(103,i)*r*(1-(w(103,i)/7000))+10;
 endfor
 p3=plot(t,w(103,:),'r--x')
 hold on
 xlabel('Years')
 ylabel('kCal')
legend([p1 p2 p3],{'Best-Case','Avg-Case','Worst-Case'},'location','southeast')



% UNCOMMENT#6




% Caloric needs with stocastity table can be found in w1 below

w1=CalbyKG.*w;
