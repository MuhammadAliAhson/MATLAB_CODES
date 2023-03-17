% Displaying the name of the Software house and names of athe group mates with their roll numbers.
disp('Company Name: BOX IT');
disp('Instructor Dr. Hamda Khan');
fprintf('1) Muhammad Ali Ahson . \n');


disp('Press any key to continue');
pause;
% Displaying a message to make the user press any key to continue.
while 1
    while 1                                                                             % Main While loop to make it work again and again unit he enters "No" as a choice below in the code.
        option = input('Press t for Three sided box and f for four sided box ','s')           %	Asking the user for his prefered design of the box.
        if option == 't' || option == 'f'
            break;
        else 
disp('It not the given option');
        end
    end

    while 1
        length = input('Please input the length of Cardboard is being used : ');              %	Asking the user to input the value of length of the box.
        break;
    end

    while 1
        width = input('Please input the width of Cardboard is being used :   ');            %	Asking the user to input the value of width of the box.
        break;
    end

    if option == 't'
        syms x;
 	h=x;
	volume=(length - 2*x).*(width - x).*(x);                                           %	The formula to calculate the volume when a thress sided design is selected.
	len=length/2;
	wid=width;
	if len>0 & len<wid                                                                 % 	Domain Calculation in case of three sided design selected.
       	
 	pi=len;
  
 	elseif wid>0 & wid<len

        pi=wid;
        end;
% derivative of volume
       qi=diff(volume);
	
	solution=solve(qi);
	
% can use crit_point in alternate way...	
	s1=solution(1,1);
	s2=solution(2,1);
	if s1>0 & s1<pi
	subs(volume,s1);
 	def=diff(qi);
	
	def1=subs(def,s1);
	
	def2=subs (volume,s1);
	def3=floor(def2);
	disp(' The volume is ');
	disp(simplify(def3));
	

	cost=(5.*length.*width);                                                                  % Cost calculation of one box.

boxes=(2000000)./cost;
boxes1=floor(boxes);
disp('Boxes can be made by a comapny in the budget ');                                   % Displaying the total number of boxes that can be made in the allocated budget.
disp(boxes1);

% Displaying the dimensions.

fprintf('The dimensions are %f %f %f \n', length - 2*pi, width - 2*pi , pi);              
 
%Graph......

y= x;
[d1, g1] = meshgrid(x,y);
wa= 2*(h * width) + 2*(h * length) + 2*(width * length)

view(3)
surf(d1,g1,wa);
shading interp;
    	elseif option == 'f'
        syms x;
 	h=x;
	volume=(length - 2*x).*(width - 2*x).*(x);              %	The formula to calculate the volume when a thress sided design is selected.
	len=length/2;
	wid=width/2;
	if len>0 & len<wid
       	
 	pi=x1;
  
 	elseif wid>0 & wid<len

        pi=wid;
        end;
       qi=diff(volume);
	
	solution=solve(qi);
	

	s1=solution(1,1);
	s2=solution(2,1);
	
	subs(volume,s1);
 	def=diff(qi);
	
	def1=subs(def,s1);
	
	def2=subs (volume,s1);
	def3=floor(def2);
	disp(' The volume is ');
	disp(simplify(def3));
      if s2>=0 & s2<=pi
      subs(volume,s2);
   	def4=diff(qi);

	def5=subs(def4,s2);

	if def5<0 
	def6=subs (volume,s2);

	disp('the maximum value is ');
	disp(simplify(def6));

	cost=(5.*length.*width);

	boxes=(2000000)./cost;
	boxes1=floor(boxes);    
	disp('Boxes can be made by a company in the Budget');                            % Displaying the total number of boxes that can be made in the allocated budget.

	disp(boxes1);
	fprintf('The dimensions are %f %f %f \n',length - 2*pi, width - pi , pi);          % Displaying the dimensions.

 	 x = 0:0.001:(width/2);
 	y= x;
	[d1, g1] = meshgrid(x,y);

	wa= d1.^2 + g1.^2;
	surf(d1,g1,wa);
	shading interp;



	
	
    end

    while 1
        choice = input('If you want to rerun the programme again then Please press Y or y otherwise press N or n.: ', 's');        %	Asking the user if he wants to run the code again and calculate a volume and number of boxes for different dimensioned cardboard.
        if choice == 'Y' | choice == 'N' | choice == 'n' | choice == 'y'
            break;
        
        end
    end

    if choice == 'N' | choice == 'n'
disp('Thank you very much for using our programme');
        break
    end
end