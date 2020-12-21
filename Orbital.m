
%Programmer: Moises Diaz
%December 12, 2019

%Radius of all the planets%
MercuryRadiusKm = 2440;
VenusRadiusKm = 6052;
EarthRadiusKm = 6378;
MarsRadiusKm = 3397;
JupiterRadiusKm = 71492;
SaturnRadiusKm = 60268;
UranusRadiusKm = 25559;
NeptuneRadiusKm = 24766;
PlutoRadiusKm = 1150;

%Gravitational Constant for every planet%
GravitationalConstant = 6.67 * 10^-11;

%Mercury Mass%
mercuryMassKg = 3.3E+23;

%Venus Mass%
venusMassKg = 4.87E+24;

%Earth Mass%
earthMassKg = 5.97E+24;

%Mars Mass%
marsMassKg = 6.42E+23;

%Jupiter Mass%
jupiterMassKg = 1.9E+27;

%Saturn Mass%
saturnMassKg = 5.68E+26;

%Uranus Mass%
uranusMassKg = 8.68E+25;

%Neptune Mass%
neptuneMassKg = 1.02E+26;

%Pluto Mass%
plutoMassKg = 1.27E+22;

%In order to do not close the menu after picking an option%
choice = 1;

prompt = 'What is the height that you want to calculate (IN KMS)? ';
x = input(prompt);

while choice ~= 10
    
%Logical Solution%
choice = menu('Choose a planet','Mercury','Venus','Earth','Mars', 'Jupiter', 'Saturn', 'Uranus', 'Neptune', 'Pluto', 'Exit');
result = 0;

switch choice
    
    case 1
        result = sqrt(GravitationalConstant * mercuryMassKg / (MercuryRadiusKm + x));
        disp (result)
    case 2
        result = sqrt(GravitationalConstant * venusMassKg / (VenusRadiusKm + x));
        disp (result)
    case 3
        result = sqrt(GravitationalConstant * earthMassKg / (EarthRadiusKm + x));
        disp (result)
    case 4
        result = sqrt(GravitationalConstant * marsMassKg / (MarsRadiusKm + x));
        disp (result)
    case 5
        result = sqrt(GravitationalConstant * jupiterMassKg / (JupiterRadiusKm + x));
        disp (result)
    case 6
        result = sqrt(GravitationalConstant * saturnMassKg / (SaturnRadiusKm + x));
        disp (result)
    case 7
        result = sqrt(GravitationalConstant * uranusMassKg / (UranusRadiusKm + x));
        disp (result)
    case 8
        result = sqrt(GravitationalConstant * neptuneMassKg / (NeptuneRadiusKm + x));
        disp (result)
    case 9
        result = sqrt(GravitationalConstant * plutoMassKg / (PlutoRadiusKm + x));
        disp (result)
        close all
end
end

