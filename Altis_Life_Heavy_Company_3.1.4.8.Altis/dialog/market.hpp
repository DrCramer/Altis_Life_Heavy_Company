class Market
{
	idd = 39000;
	name = "Market";
	movingEnable = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class RscTitleBackground : Life_RscText
		{
			colorBackground[] = {0.039, 0.196, 0.51, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2;
			w = 0.7;
			h = (1 / 25);
		};
		
		class RscBackground : Life_RscText
		{
			colorBackground[] = {0, 0, 0, 0.7};
			idc = -1;
			x = 0.1;
			y = 0.2 + (11 / 250);
			w = 0.7;
			h = 0.7 - (22 / 250);
		};
		
		class RscTitleText : Life_RscTitle
		{
			colorBackground[] = {0, 0, 0, 0};
			idc = 39001;
			text = "Цены На продажу\покупку";
			x = 0.1;
			y = 0.2;
			w = 0.7;
			h = (1 / 25);
		};
		
		
		class RscTrunkText : Life_RscText
		{
			idc = -1;
			colorBackground[] = {0.039, 0.196, 0.51, 0.5};
			text = "Цена покупки";
			sizeEx = 0.04;
			
			x = 0.11; y = 0.25;
			w = 0.3; h = 0.04;
		};
		
		class RscPlayerText : Life_RscText
		{
			idc = -1;
			colorBackground[] = {0.039, 0.196, 0.51, 0.5};
			text = "Цена продажи";
			sizeEx = 0.04;
			
			x = 0.49; y = 0.25;
			w = 0.3; h = 0.04;
		};	
	};
	
	class Controls
	{
		class achatGear : Life_RscListBox
		{
			idc = 39002;
			text = "";
			sizeEx = 0.030;
			
			x = 0.11; y = 0.29;
			w = 0.3; h = 0.55;
		};
		
		class VenteGear : Life_RscListBox
		{
			idc = 39003;
			text = "";
			sizeEx = 0.030;
			
			x = 0.49; y = 0.29;
			w = 0.3; h = 0.55;
		};
		
		
		class ButtonClose : Life_RscButtonMenu {
			idc = -1;
			//shortcuts[] = {0x00050000 + 2};
			text = "$STR_Global_Close";
			onButtonClick = "closeDialog 0;";
			x = 0.1;
			y = 0.9 - (1 / 25);
			w = (6.25 / 40);
			h = (1 / 25);
		};
	};
};