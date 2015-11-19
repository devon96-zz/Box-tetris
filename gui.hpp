class OutfitShop {
	idd = 1;  
	controls[] = { btnCancel, btnConfirm, boxManipulation};
	class btnCancel {
		idc = 2;
		type = CT_STATIC;
		style = ST_RIGHT;    
		text = "cancel";
		sizeEx = 0.05;							
		font = TahomaB;							
		colorBackground[] = {0.6,0,0,1};
		colorText[] = { 0, 0, 0, 1 };
		x = 1.30;
		y = 0.9;
		w = 0.18;
		h = 0.07;
		onMouseButtonClick = "closeDialog 2;";
	};
	class btnConfirm {
		idc = 3;
		type = CT_STATIC;
		style = ST_RIGHT;    
		text = "Spawn Box";
		sizeEx = 0.04;							
		font = TahomaB;
		colorBackground[] = {0,0.4,0,1};
		colorText[] = { 0, 0, 0, 1 };
		x = 1.1;
		y = 0.9;
		w = 0.18;
		h = 0.07;
		onMouseButtonClick = "[] call Core_fnc_spawnbox;";
	};
	class boxManipulation {
		idc = 4;
		type = CT_STATIC;
		style = ST_RIGHT;    
		text = "Start manipulating";
		sizeEx = 0.025;
		font = TahomaB;
		colorBackground[] = {0,0.4,0,1};
		colorText[] = { 0, 0, 0, 1 };
		x = 1.1;
		y = 1;
		w = 0.18;
		h = 0.07;
		onKeyDown = "_this spawn Core_fnc_boxmanipulation";
	};
};