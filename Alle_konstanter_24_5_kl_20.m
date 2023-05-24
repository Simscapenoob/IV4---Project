%Samlede konstanter:

%System characteristics:
nr_of_stacks = 7;
cell_area = 5600; %[cm^2]

%Fra voltagemodellen:
F = 96485.3321233100184; %Faradays constant [Coloumb/mol]
ctc_an = 2; %change transfer koefficient
ctc_ca = 2; %Change transfer koefficient 
R = 8.314; %Gas konstant [m^3*Pa*K^-1*mol^-1]
lambda_m = 21; %Membrane water content
%sigma [S/cm], S = 1/R = A/V 

i_0_an = 2*10^(-7);%exchange current density anode [A/cm^2]
i_0_ca = 2*10^(-3);%exchange current density cathode [A/cm^2]
t_me = 175*10^(-4); %thickness of membrane [cm] 0.0175 cm nafion 117
U_th = 1.473; % thermal neutral voltage [v] at 80 degrees celsius, 1 bar.

% Fra gasproduktionsmodellen:
M_H2 = 0.002016; % Kg/mol H2
M_O2 = 0.031999; % Kg/mol O2

% Fra termmodellen:
%Test af tabeller
c_p_w = nyeretabelTcp.VarName2(1:250);% [J/(kg*K)]
T = transpose(1:250); % [degree C]
 
T_amb = 20; %[degree C] Ambient temperature.
h_conv = 7.5; % [W/(m^2*K)] Konvektiv varmeovergangstal for et rektangel, 
% der står indenfor. Tal kommer fra Mads Pagh.
N_cell=36; %[stk] Antal celler i en stak
c_p_stack = 870; % [J/(Kg*K)] tal kommer fra matlab pem model
%stack_rho = 1800; % [Kg/m^3]
%stack_area = 280; %[cm^2] 
%stack_t_membrane = 175; % [um]
%stack_t_gdl_a = 25; % [um] 
%stack_t_gdl_c = 250; % [um]
%m_dot_w = 1; % [kg/s] Mangler også 

%fra hjemmesiden får vi nemlig: 80x97x150 cm insize størrelsen af stakken fra Bosch kilde.
A_stack_surface = 0.8*0.97*2+0.8*1.5*2+0.97*1.5*2; %Dette er fra Bosh kilde.

% Gamle dimensioner på stack %2*stack_area*10^-4+4*(stack_t_membrane + stack_t_gdl_a + stack_t_gdl_c) ...
    %* 10^-6 * N_cell* sqrt(stack_area)*10^-2; %[m^2]     Overfladearealet af stakken

m_stack = 2300; %Fra Bosh kilde

% Gamle dimensioner er vægt af stack %stack_rho * stack_area * 10^-4 * (stack_t_membrane + stack_t_gdl_a + stack_t_gdl_c) ...
    %* 10^-6 * N_cell; % [kg] Mass of stack

T_lookup = 283.15:1:372.15; %[K]
P_lookup = 2:0.1:9.9; %[]
