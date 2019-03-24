trouble network "Windows '95 Print Troubleshooter"

service
{
	name: "Product Support";
	cost: fix = 480.00;
}

node AppData
{
	name: "Application Data";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect or corrupt"
	};
	position: (18294, 10390);
	category: "System";
	//	function: max;
}

node DskLocal
{
	name: "Local Disk Space ";
	type: discrete[2] =
	{
		"Greater than 2 Mb",
		"Less than 2 Mb"
	};
	position: (14374, 10134);
	label: fixobs;
	category: "System";
	cost: fix = 20.00, observe = 1.00;
}

node PrtSpool
{
	name: "Print Spooling";
	type: discrete[2] =
	{
		"Enabled",
		"Disabled"
	};
	position: (20348, 11380);
	label: informational;
	category: "Config";
	cost: observe = 0.10;
}

node PrtData
{
	name: "Print Data";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (10614, 18703);
	category: "Printer";
	//	function: max;
}

node PrtCbl
{
	name: "Local Printer Cable";
	type: discrete[2] =
	{
		"Connected",
		"Loose"
	};
	position: (17274, 11785);
	label: fixobs;
	category: "Datapath";
	cost: fix = 1.00, observe = 1.00;
}

node PrtOn
{
	name: "Printer On and Online";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (10220, 15428);
	label: fixobs;
	category: "Printer";
	cost: fix = 1.00, observe = 2.00;
}

node PrtThread
{
	name: "Port thread/Prt Proc OK";
	type: discrete[2] =
	{
		"OK",
		"Corrupt/Buggy"
	};
	position: (11836, 10827);
	label: unfixable;
	category: "System";
}

node GDIOUT
{
	name: "GDI Output OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (14522, 12341);
	category: "Datapath";
	//	function: max;
}

node EMFOK
{
	name: "EMF OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (14762, 10841);
	category: "Datapath";
	//	function: max;
}

node PrtDriver
{
	name: "Correct Driver";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (22148, 11455);
	label: fixobs;
	category: "Print Setup";
	cost: fix = 3.00, observe = 3.00;
}

node GDIIN
{
	name: "GDI Input OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (14534, 11458);
	category: "Datapath";
}

node Problem1
{
	name: "No Output";
	type: discrete[2] =
	{
		"Normal Output",
		"No Output"
	};
	position: (10524, 20758);
	label: problem;
	category: "Printer";
}

node PrtPaper
{
	name: "Printer Paper Supply";
	type: discrete[2] =
	{
		"Has Paper",
		"No Paper"
	};
	position: (11710, 15013);
	label: fixobs;
	category: "Printer";
	cost: fix = 4.00, observe = 2.00;
}

node DrvSet
{
	name: "Driver Configuration";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect"
	};
	position: (12510, 11875);
	label: fixobs;
	category: "Print Setup";
	cost: fix = 3.00, observe = 3.00;
}

node NetPrint
{
	name: "Printing over Network";
	type: discrete[2] =
	{
		"No (Local printer)",
		"Yes (Network printer)"
	};
	position: (17766, 16165);
	label: informational;
	category: "Config";
	cost: observe = 0.01;
}

node PrtDataOut
{
	name: "PrintDataOut";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (14558, 13614);
	category: "Datapath";
	//	function: max;
}

node PrtPath
{
	name: "Net Printer Pathname";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect"
	};
	position: (17822, 14221);
	label: fixobs;
	category: "Print Setup";
	cost: fix = 3.00, observe = 3.00;
}

node PC2PRT
{
	name: "PC to PRT Transport";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (14258, 15144);
	category: "Datapath";
}

node NetOK
{
	name: "NET OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (17296, 14821);
	category: "Datapath";
	//	function: max;
}

node DrvOK
{
	name: "Driver File Status";
	type: discrete[2] =
	{
		"Reinstalled",
		"Corrupt"
	};
	position: (12592, 12594);
	label: fixunobs;
	category: "Print Setup";
	cost: fix = 8.00;
}

node PrtSel
{
	name: "Correct Printer Selected";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (12174, 13645);
	label: fixobs;
	category: "Print Setup";
	cost: fix = 2.00, observe = 2.00;
}

node PrtMem
{
	name: "Printer Memory";
	type: discrete[2] =
	{
		"Greater than 2 Mb",
		"Less than 2Mb"
	};
	position: (18130, 17773);
	label: fixobs;
	category: "Printer";
	cost: fix = 15.00, observe = 2.00;
}

node LclOK
{
	name: "LOCAL OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (17694, 13780);
	category: "Config";
	//	function: max;
}

node PrtPort
{
	name: "Correct Local Port";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (16508, 13210);
	label: fixobs;
	category: "Print Setup";
	cost: fix = 3.00, observe = 3.00;
}

node DeskPrntSpd
{
	name: "Desk Speed";
	type: discrete[2] =
	{
		"OK",
		"Too Slow"
	};
	position: (24554, 19078);
	//	function: max;
}

node CblPrtHrdwrOK
{
	name: "Cable/Port Hardware";
	type: discrete[2] =
	{
		"Operational",
		"Not Operational"
	};
	position: (19674, 12550);
	label: fixunobs;
	cost: fix = 50.00;
}

node DSApplctn
{
	name: "Print Environment";
	type: discrete[2] =
	{
		"DOS",
		"Windows"
	};
	position: (13628, 14202);
	label: informational;
	cost: observe = 0.01;
}

node DS_NTOK
{
	name: "DOS-NET OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (20236, 15316);
	//	function: max;
}

node DS_LCLOK
{
	name: "DOS-LOCAL OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (15924, 12610);
	//	function: max;
}

node PrtMpTPth
{
	name: "Port Mapping to Path";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect"
	};
	position: (15232, 16135);
	label: fixobs;
	cost: fix = 1.00, observe = 1.00;
}

node PgOrnttnOK
{
	name: "Page Orientation";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect"
	};
	position: (16578, 18080);
	label: fixobs;
	cost: fix = 3.00, observe = 3.00;
}

node PrntngArOK
{
	name: "Printer Printing Area";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect"
	};
	position: (15016, 18725);
	label: fixobs;
	cost: fix = 5.00, observe = 3.00;
}

node ScrnFntNtPrntrFnt
{
	name: "Screen Matches Printer";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (21624, 17091);
	label: fixobs;
	cost: fix = 10.00, observe = 1.00;
}

node CmpltPgPrntd
{
	name: "Non PS Complete";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (16650, 19301);
	//	function: max;
}

node Problem4
{
	name: "Graphics Distorted or Incomplete";
	type: discrete[2] =
	{
		"No",
		"Yes"
	};
	position: (19288, 20892);
	label: problem;
}

node GrphcsRltdDrvrSttngs
{
	name: "Driver Config- Graphics";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect"
	};
	position: (19612, 17466);
	label: fixobs;
	cost: fix = 3.00, observe = 3.00;
}

node Problem5
{
	name: "Fonts Missing or Distorted";
	type: discrete[2] =
	{
		"No",
		"Yes"
	};
	position: (22468, 20861);
	label: problem;
}

node TrTypFnts
{
	name: "True Type Fonts";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (21330, 20277);
	label: informational;
	cost: observe = 0.01;
}

node FntInstlltn
{
	name: "Font Installation";
	type: discrete[2] =
	{
		"Verified",
		"Faulty"
	};
	position: (21756, 19059);
	label: fixobs;
	cost: fix = 3.00, observe = 7.00;
}

node PrntrAccptsTrtyp
{
	name: "Printer Accepts Truetype";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (20526, 18429);
	label: fixobs;
	cost: fix = 1.00, observe = 2.00;
}

node TTOK
{
	name: "TT OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (20992, 19569);
	//	function: max;
}

node GrbldOtpt
{
	name: "Non PS Garbled";
	type: discrete[2] =
	{
		"No",
		"Yes"
	};
	position: (14948, 17905);
}

node NtwrkCnfg
{
	name: "Network Configuration";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect"
	};
	position: (23372, 14356);
	label: fixunobs;
	cost: fix = 15.00;
}

node NnTTOK
{
	name: "Non TT OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (23302, 20154);
	//	function: max;
}

node AppDtGnTm
{
	name: "App Data Generation";
	type: discrete[2] =
	{
		"Fast Enough",
		"Too Long"
	};
	position: (23878, 16873);
	label: fixobs;
	cost: fix = 5.00, observe = 2.00;
}

node PrntPrcssTm
{
	name: "Print Processing";
	type: discrete[2] =
	{
		"Fast Enough",
		"Too Long"
	};
	position: (23352, 17728);
	label: fixunobs;
	cost: fix = 5.00;
}

node HrglssDrtnAftrPrnt
{
	name: "Hourglass Duration";
	type: discrete[2] =
	{
		"Fast Enough",
		"Too Long"
	};
	position: (27232, 17773);
	label: informational;
	cost: observe = 0.10;
}

node LclGrbld
{
	name: "Local Garbled OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (19862, 16021);
	//	function: max;
}

node NtGrbld
{
	name: "Net Garbled OK";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (21704, 16138);
	//	function: max;
}

node NnPSGrphc
{
	name: "Non PS Graphic";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (19792, 20064);
	//	function: max;
}

node REPEAT
{
	name: "Repeatable Problem";
	type: discrete[2] =
	{
		"Yes (Always the Same)",
		"No (Different Each Time)"
	};
	position: (22720, 12781);
	label: informational;
	cost: observe = 2.00;
	//	function: max;
}

node PrtTimeOut
{
	name: "Printer Timeouts";
	type: discrete[2] =
	{
		"Long Enough",
		"Too Short"
	};
	position: (12280, 16258);
	label: fixunobs;
	cost: fix = 3.00;
}

node PrtPScript
{
	name: "Postscript Printer";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (16268, 16645);
	label: informational;
	cost: observe = 0.01;
}

node AvlblVrtlMmry
{
	name: "Printer Virtual Mem";
	type: discrete[2] =
	{
		"Adequate (> 1Mb)",
		"Inadequate (< 1 Mb)"
	};
	position: (13794, 17008);
	label: fixunobs;
	cost: fix = 5.00;
}

node PSERRMEM
{
	name: "PS Error Memory";
	type: discrete[2] =
	{
		"No Error",
		"Low Memory"
	};
	position: (13210, 18823);
	label: informational;
	cost: observe = 0.01;
}

node TstpsTxt
{
	name: "testps.txt Output";
	type: discrete[2] =
	{
		">1 Mb Available VM",
		"<1 Mb Available VM"
	};
	position: (11542, 19809);
	label: informational;
	cost: observe = 5.00;
}

node GrbldPS
{
	name: "PS Garbled ";
	type: discrete[2] =
	{
		"No",
		"Yes"
	};
	position: (13104, 19811);
	//	function: max;
}

node IncmpltPS
{
	name: "PS Complete";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (15234, 19873);
	//	function: max;
}

node EPSGrphc
{
	name: "EPS Graphic";
	type: discrete[2] =
	{
		"No (*.TIF,*.WMF,*.BMP)",
		"Yes (*.EPS)"
	};
	position: (19358, 19119);
	label: fixobs;
	cost: fix = 5.00, observe = 1.00;
}

node PSGRAPHIC
{
	name: "PS Graphic";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (19674, 18388);
	//	function: max;
}

node FllCrrptdBffr
{
	name: "Print Buffer";
	type: discrete[2] =
	{
		"Intact (not Corrupt)",
		"Full or Corrupt"
	};
	position: (9850, 16018);
	label: fixunobs;
	cost: fix = 3.00;
}

node AppOK
{
	name: "Application";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect/Corrupt"
	};
	position: (20420, 10150);
	label: fixobs;
	cost: fix = 10.00, observe = 1.00;
}

node DataFile
{
	name: "Document";
	type: discrete[2] =
	{
		"Correct",
		"Incorrect/Corrupt"
	};
	position: (20438, 10765);
	label: fixobs;
	cost: fix = 3.00, observe = 1.00;
}

node PrtFile
{
	name: "Print to File";
	type: discrete[2] =
	{
		"Yes",
		"No"
	};
	position: (15788, 14215);
	label: informational;
	cost: observe = 4.00;
}

node PrtIcon
{
	name: "Printer Icon";
	type: discrete[2] =
	{
		"Normal",
		"Grayed Out"
	};
	position: (25936, 15901);
	label: informational;
	category: "Printer";
	cost: observe = 1.00;
	//	function: max;
}

node Problem6
{
	name: "Garbled Output";
	type: discrete[2] =
	{
		"No",
		"Yes"
	};
	position: (14048, 20832);
	label: problem;
}

node Problem3
{
	name: "Incomplete Page";
	type: discrete[2] =
	{
		"No",
		"Yes"
	};
	position: (16560, 20863);
	label: problem;
}

node NtSpd
{
	name: "Net Speed";
	type: discrete[2] =
	{
		"OK",
		"Slow"
	};
	position: (26334, 19663);
	//	function: max;
}

node Problem2
{
	name: "Too Slow";
	type: discrete[2] =
	{
		"OK",
		"Too Long"
	};
	position: (25228, 20833);
	label: problem;
}

node PrtQueue
{
	name: "Printer Queue";
	type: discrete[2] =
	{
		"Short",
		"Long"
	};
	position: (27246, 18643);
	label: fixobs;
	cost: fix = 1.00, observe = 1.00;
}

node PrtStatPaper
{
	name: "Printer Status";
	type: discrete[2] =
	{
		"No Error",
		"Jam, Out, Bin Full"
	};
	position: (12842, 15628);
	category: "STATUS";
}

node PrtStatToner
{
	name: "Printer Status";
	type: discrete[2] =
	{
		"No Error",
		"Low, None"
	};
	position: (12534, 18130);
	category: "STATUS";
}

node PrtStatMem
{
	name: "Printer Status";
	type: discrete[2] =
	{
		"No Error",
		"Out of Memory"
	};
	position: (18114, 19606);
	category: "STATUS";
}

node PrtStatOff
{
	name: "Printer Status";
	type: discrete[2] =
	{
		"No Error",
		"OFFLINE, OFF"
	};
	position: (10732, 14413);
	category: "STATUS";
}

node TnrSpply
{
	name: "Toner Supply";
	type: discrete[2] =
	{
		"Adequate",
		"Low"
	};
	position: (12384, 17233);
	label: fixobs;
	cost: fix = 4.00, observe = 2.00;
}

node PTROFFLINE
{
	name: "Printer Driver Set Offline";
	type: discrete[2] =
	{
		"Online",
		"Offline"
	};
	position: (24526, 13351);
	label: fixobs;
	cost: fix = 1.00, observe = 1.00;
}



probability(AppData | AppOK, DataFile)
{
	function: max;
	(0, 0): 0.9999, 0.0001;
	(1, 0): 0, 1;
	(0, 1): 0, 1;
}

probability(DskLocal)
{
	0.97, 0.03;
}

probability(PrtSpool)
{
	0.95, 0.05;
}

probability(PrtData | PrtOn, PrtPaper, PC2PRT, PrtMem, PrtTimeOut, FllCrrptdBffr, TnrSpply)
{
	function: max;
	(0, 0, 0, 0, 0, 0, 0): 0.99, 0.01;
	(1, 0, 0, 0, 0, 0, 0): 0, 1;
	(0, 1, 0, 0, 0, 0, 0): 0, 1;
	(0, 0, 1, 0, 0, 0, 0): 0, 1;
	(0, 0, 0, 1, 0, 0, 0): 0.1, 0.9;
	(0, 0, 0, 0, 1, 0, 0): 0, 1;
	(0, 0, 0, 0, 0, 1, 0): 0.02, 0.98;
	(0, 0, 0, 0, 0, 0, 1): 0.01, 0.99;
}

probability(PrtCbl)
{
	0.98, 0.02;
}

probability(PrtOn)
{
	0.9, 0.1;
}

probability(PrtThread)
{
	0.9999, 0.0001;
}

probability(GDIOUT | PrtDriver, GDIIN, DrvSet, DrvOK)
{
	function: max;
	(0, 0, 0, 0): 0.99, 0.01;
	(1, 0, 0, 0): 0.1, 0.9;
	(0, 1, 0, 0): 0.1, 0.9;
	(0, 0, 1, 0): 0.9, 0.1;
	(0, 0, 0, 1): 0.2, 0.8;
}

probability(EMFOK | AppData, DskLocal, PrtThread)
{
	function: max;
	(0, 0, 0): 0.99, 0.01;
	(1, 0, 0): 0.1, 0.9;
	(0, 1, 0): 0, 1;
	(0, 0, 1): 0.05, 0.95;
}

probability(PrtDriver)
{
	0.9, 0.1;
}

probability(GDIIN | AppData, PrtSpool, EMFOK)
{
	(0, 0, 0): 1, 0;
	(0, 0, 1): 0, 1;
	(0, 1, 0): 1, 0;
	(0, 1, 1): 1, 0;
	(1, 0, 0): 0, 1;
	(1, 0, 1): 0, 1;
	(1, 1, 0): 0, 1;
	(1, 1, 1): 0, 1;
}

probability(Problem1 | PrtData)
{
	(0): 1, 0;
	(1): 0, 1;
}

probability(PrtPaper)
{
	0.98, 0.02;
}

probability(DrvSet)
{
	0.99, 0.01;
}

probability(NetPrint)
{
	0.8, 0.2;
}

probability(PrtDataOut | GDIOUT, PrtSel)
{
	function: max;
	(0, 0): 0.99, 0.01;
	(1, 0): 0, 1;
	(0, 1): 0, 1;
}

probability(PrtPath)
{
	0.97, 0.03;
}

probability(PC2PRT | NetPrint, PrtDataOut, NetOK, LclOK, DSApplctn, DS_NTOK, DS_LCLOK)
{
	(0, 0, 0, 0, 0, 0, 0): 1, 0;
	(0, 0, 0, 0, 0, 0, 1): 0, 1;
	(0, 0, 0, 0, 0, 1, 0): 1, 0;
	(0, 0, 0, 0, 0, 1, 1): 0, 1;
	(0, 0, 0, 0, 1, 0, 0): 1, 0;
	(0, 0, 0, 0, 1, 0, 1): 1, 0;
	(0, 0, 0, 0, 1, 1, 0): 1, 0;
	(0, 0, 0, 0, 1, 1, 1): 1, 0;
	(0, 0, 0, 1, 0, 0, 0): 1, 0;
	(0, 0, 0, 1, 0, 0, 1): 0, 1;
	(0, 0, 0, 1, 0, 1, 0): 1, 0;
	(0, 0, 0, 1, 0, 1, 1): 0, 1;
	(0, 0, 0, 1, 1, 0, 0): 0, 1;
	(0, 0, 0, 1, 1, 0, 1): 0, 1;
	(0, 0, 0, 1, 1, 1, 0): 0, 1;
	(0, 0, 0, 1, 1, 1, 1): 0, 1;
	(0, 0, 1, 0, 0, 0, 0): 1, 0;
	(0, 0, 1, 0, 0, 0, 1): 0, 1;
	(0, 0, 1, 0, 0, 1, 0): 1, 0;
	(0, 0, 1, 0, 0, 1, 1): 0, 1;
	(0, 0, 1, 0, 1, 0, 0): 1, 0;
	(0, 0, 1, 0, 1, 0, 1): 1, 0;
	(0, 0, 1, 0, 1, 1, 0): 1, 0;
	(0, 0, 1, 0, 1, 1, 1): 1, 0;
	(0, 0, 1, 1, 0, 0, 0): 1, 0;
	(0, 0, 1, 1, 0, 0, 1): 0, 1;
	(0, 0, 1, 1, 0, 1, 0): 1, 0;
	(0, 0, 1, 1, 0, 1, 1): 0, 1;
	(0, 0, 1, 1, 1, 0, 0): 0, 1;
	(0, 0, 1, 1, 1, 0, 1): 0, 1;
	(0, 0, 1, 1, 1, 1, 0): 0, 1;
	(0, 0, 1, 1, 1, 1, 1): 0, 1;
	(0, 1, 0, 0, 0, 0, 0): 1, 0;
	(0, 1, 0, 0, 0, 0, 1): 0, 1;
	(0, 1, 0, 0, 0, 1, 0): 1, 0;
	(0, 1, 0, 0, 0, 1, 1): 0, 1;
	(0, 1, 0, 0, 1, 0, 0): 0, 1;
	(0, 1, 0, 0, 1, 0, 1): 0, 1;
	(0, 1, 0, 0, 1, 1, 0): 0, 1;
	(0, 1, 0, 0, 1, 1, 1): 0, 1;
	(0, 1, 0, 1, 0, 0, 0): 1, 0;
	(0, 1, 0, 1, 0, 0, 1): 0, 1;
	(0, 1, 0, 1, 0, 1, 0): 1, 0;
	(0, 1, 0, 1, 0, 1, 1): 0, 1;
	(0, 1, 0, 1, 1, 0, 0): 0, 1;
	(0, 1, 0, 1, 1, 0, 1): 0, 1;
	(0, 1, 0, 1, 1, 1, 0): 0, 1;
	(0, 1, 0, 1, 1, 1, 1): 0, 1;
	(0, 1, 1, 0, 0, 0, 0): 1, 0;
	(0, 1, 1, 0, 0, 0, 1): 0, 1;
	(0, 1, 1, 0, 0, 1, 0): 1, 0;
	(0, 1, 1, 0, 0, 1, 1): 0, 1;
	(0, 1, 1, 0, 1, 0, 0): 0, 1;
	(0, 1, 1, 0, 1, 0, 1): 0, 1;
	(0, 1, 1, 0, 1, 1, 0): 0, 1;
	(0, 1, 1, 0, 1, 1, 1): 0, 1;
	(0, 1, 1, 1, 0, 0, 0): 1, 0;
	(0, 1, 1, 1, 0, 0, 1): 0, 1;
	(0, 1, 1, 1, 0, 1, 0): 1, 0;
	(0, 1, 1, 1, 0, 1, 1): 0, 1;
	(0, 1, 1, 1, 1, 0, 0): 0, 1;
	(0, 1, 1, 1, 1, 0, 1): 0, 1;
	(0, 1, 1, 1, 1, 1, 0): 0, 1;
	(0, 1, 1, 1, 1, 1, 1): 0, 1;
	(1, 0, 0, 0, 0, 0, 0): 1, 0;
	(1, 0, 0, 0, 0, 0, 1): 1, 0;
	(1, 0, 0, 0, 0, 1, 0): 0, 1;
	(1, 0, 0, 0, 0, 1, 1): 0, 1;
	(1, 0, 0, 0, 1, 0, 0): 1, 0;
	(1, 0, 0, 0, 1, 0, 1): 1, 0;
	(1, 0, 0, 0, 1, 1, 0): 1, 0;
	(1, 0, 0, 0, 1, 1, 1): 1, 0;
	(1, 0, 0, 1, 0, 0, 0): 1, 0;
	(1, 0, 0, 1, 0, 0, 1): 1, 0;
	(1, 0, 0, 1, 0, 1, 0): 0, 1;
	(1, 0, 0, 1, 0, 1, 1): 0, 1;
	(1, 0, 0, 1, 1, 0, 0): 1, 0;
	(1, 0, 0, 1, 1, 0, 1): 1, 0;
	(1, 0, 0, 1, 1, 1, 0): 1, 0;
	(1, 0, 0, 1, 1, 1, 1): 1, 0;
	(1, 0, 1, 0, 0, 0, 0): 1, 0;
	(1, 0, 1, 0, 0, 0, 1): 1, 0;
	(1, 0, 1, 0, 0, 1, 0): 0, 1;
	(1, 0, 1, 0, 0, 1, 1): 0, 1;
	(1, 0, 1, 0, 1, 0, 0): 0, 1;
	(1, 0, 1, 0, 1, 0, 1): 0, 1;
	(1, 0, 1, 0, 1, 1, 0): 0, 1;
	(1, 0, 1, 0, 1, 1, 1): 0, 1;
	(1, 0, 1, 1, 0, 0, 0): 1, 0;
	(1, 0, 1, 1, 0, 0, 1): 1, 0;
	(1, 0, 1, 1, 0, 1, 0): 0, 1;
	(1, 0, 1, 1, 0, 1, 1): 0, 1;
	(1, 0, 1, 1, 1, 0, 0): 0, 1;
	(1, 0, 1, 1, 1, 0, 1): 0, 1;
	(1, 0, 1, 1, 1, 1, 0): 0, 1;
	(1, 0, 1, 1, 1, 1, 1): 0, 1;
	(1, 1, 0, 0, 0, 0, 0): 1, 0;
	(1, 1, 0, 0, 0, 0, 1): 1, 0;
	(1, 1, 0, 0, 0, 1, 0): 0, 1;
	(1, 1, 0, 0, 0, 1, 1): 0, 1;
	(1, 1, 0, 0, 1, 0, 0): 0, 1;
	(1, 1, 0, 0, 1, 0, 1): 0, 1;
	(1, 1, 0, 0, 1, 1, 0): 0, 1;
	(1, 1, 0, 0, 1, 1, 1): 0, 1;
	(1, 1, 0, 1, 0, 0, 0): 1, 0;
	(1, 1, 0, 1, 0, 0, 1): 1, 0;
	(1, 1, 0, 1, 0, 1, 0): 0, 1;
	(1, 1, 0, 1, 0, 1, 1): 0, 1;
	(1, 1, 0, 1, 1, 0, 0): 0, 1;
	(1, 1, 0, 1, 1, 0, 1): 0, 1;
	(1, 1, 0, 1, 1, 1, 0): 0, 1;
	(1, 1, 0, 1, 1, 1, 1): 0, 1;
	(1, 1, 1, 0, 0, 0, 0): 1, 0;
	(1, 1, 1, 0, 0, 0, 1): 1, 0;
	(1, 1, 1, 0, 0, 1, 0): 0, 1;
	(1, 1, 1, 0, 0, 1, 1): 0, 1;
	(1, 1, 1, 0, 1, 0, 0): 0, 1;
	(1, 1, 1, 0, 1, 0, 1): 0, 1;
	(1, 1, 1, 0, 1, 1, 0): 0, 1;
	(1, 1, 1, 0, 1, 1, 1): 0, 1;
	(1, 1, 1, 1, 0, 0, 0): 1, 0;
	(1, 1, 1, 1, 0, 0, 1): 1, 0;
	(1, 1, 1, 1, 0, 1, 0): 0, 1;
	(1, 1, 1, 1, 0, 1, 1): 0, 1;
	(1, 1, 1, 1, 1, 0, 0): 0, 1;
	(1, 1, 1, 1, 1, 0, 1): 0, 1;
	(1, 1, 1, 1, 1, 1, 0): 0, 1;
	(1, 1, 1, 1, 1, 1, 1): 0, 1;
}

probability(NetOK | PrtPath, NtwrkCnfg, PTROFFLINE)
{
	function: max;
	(0, 0, 0): 0.99, 0.01;
	(1, 0, 0): 0, 1;
	(0, 1, 0): 0.1, 0.9;
	(0, 0, 1): 0, 1;
}

probability(DrvOK)
{
	0.99, 0.01;
}

probability(PrtSel)
{
	0.99, 0.01;
}

probability(PrtMem)
{
	0.95, 0.05;
}

probability(LclOK | PrtCbl, PrtPort, CblPrtHrdwrOK)
{
	function: max;
	(0, 0, 0): 0.999, 0.001;
	(1, 0, 0): 0, 1;
	(0, 1, 0): 0, 1;
	(0, 0, 1): 0.01, 0.99;
}

probability(PrtPort)
{
	0.99, 0.01;
}

probability(DeskPrntSpd | PrtMem, AppDtGnTm, PrntPrcssTm)
{
	function: max;
	(0, 0, 0): 0.999, 0.000999987;
	(1, 0, 0): 0.25, 0.75;
	(0, 1, 0): 0.000999987, 0.999;
	(0, 0, 1): 0.000999987, 0.999;
}

probability(CblPrtHrdwrOK)
{
	0.99, 0.01;
}

probability(DSApplctn)
{
	0.15, 0.85;
}

probability(DS_NTOK | AppData, PrtPath, PrtMpTPth, NtwrkCnfg, PTROFFLINE)
{
	function: max;
	(0, 0, 0, 0, 0): 0.99, 0.01;
	(1, 0, 0, 0, 0): 0.2, 0.8;
	(0, 1, 0, 0, 0): 0, 1;
	(0, 0, 1, 0, 0): 0, 1;
	(0, 0, 0, 1, 0): 0.1, 0.9;
	(0, 0, 0, 0, 1): 0, 1;
}

probability(DS_LCLOK | AppData, PrtCbl, PrtPort, CblPrtHrdwrOK)
{
	function: max;
	(0, 0, 0, 0): 1, 0;
	(1, 0, 0, 0): 0.1, 0.9;
	(0, 1, 0, 0): 0, 1;
	(0, 0, 1, 0): 0, 1;
	(0, 0, 0, 1): 0.1, 0.9;
}

probability(PrtMpTPth)
{
	0.8, 0.2;
}

probability(PgOrnttnOK)
{
	0.95, 0.05;
}

probability(PrntngArOK)
{
	0.98, 0.02;
}

probability(ScrnFntNtPrntrFnt)
{
	0.95, 0.05;
}

probability(CmpltPgPrntd | PrtMem, PgOrnttnOK, PrntngArOK)
{
	function: max;
	(0, 0, 0): 0.99, 0.01;
	(1, 0, 0): 0.3, 0.7;
	(0, 1, 0): 0.00999999, 0.99;
	(0, 0, 1): 0.1, 0.9;
}

probability(Problem4 | NnPSGrphc, PrtPScript, PSGRAPHIC)
{
	(0, 0, 0): 0, 1;
	(0, 0, 1): 1, 0;
	(0, 1, 0): 0, 1;
	(0, 1, 1): 0, 1;
	(1, 0, 0): 0, 1;
	(1, 0, 1): 1, 0;
	(1, 1, 0): 1, 0;
	(1, 1, 1): 1, 0;
}

probability(GrphcsRltdDrvrSttngs)
{
	0.95, 0.05;
}

probability(Problem5 | TrTypFnts, TTOK, NnTTOK)
{
	(0, 0, 0): 0, 1;
	(0, 0, 1): 0, 1;
	(0, 1, 0): 1, 0;
	(0, 1, 1): 1, 0;
	(1, 0, 0): 0, 1;
	(1, 0, 1): 1, 0;
	(1, 1, 0): 0, 1;
	(1, 1, 1): 1, 0;
}

probability(TrTypFnts)
{
	0.9, 0.1;
}

probability(FntInstlltn)
{
	0.98, 0.02;
}

probability(PrntrAccptsTrtyp)
{
	0.9, 0.1;
}

probability(TTOK | PrtMem, FntInstlltn, PrntrAccptsTrtyp)
{
	function: max;
	(0, 0, 0): 0.99, 0.00999999;
	(1, 0, 0): 0.5, 0.5;
	(0, 1, 0): 0.1, 0.9;
	(0, 0, 1): 0, 1;
}

probability(GrbldOtpt | NetPrint, LclGrbld, NtGrbld)
{
	(0, 0, 0): 1, 0;
	(0, 0, 1): 1, 0;
	(0, 1, 0): 0, 1;
	(0, 1, 1): 0, 1;
	(1, 0, 0): 1, 0;
	(1, 0, 1): 0, 1;
	(1, 1, 0): 1, 0;
	(1, 1, 1): 0, 1;
}

probability(NtwrkCnfg)
{
	0.98, 0.02;
}

probability(NnTTOK | PrtMem, ScrnFntNtPrntrFnt, FntInstlltn)
{
	function: max;
	(0, 0, 0): 0.99, 0.00999999;
	(1, 0, 0): 0.5, 0.5;
	(0, 1, 0): 0.1, 0.9;
	(0, 0, 1): 0.1, 0.9;
}

probability(AppDtGnTm | PrtSpool)
{
	(0): 1, 0;
	(1): 0.99, 0.00999999;
}

probability(PrntPrcssTm | PrtSpool)
{
	(0): 0.99, 0.00999999;
	(1): 1, 0;
}

probability(HrglssDrtnAftrPrnt | AppDtGnTm)
{
	(0): 0.99, 0.01;
	(1): 0.1, 0.9;
}

probability(LclGrbld | AppData, PrtDriver, PrtMem, CblPrtHrdwrOK)
{
	function: max;
	(0, 0, 0, 0): 1, 0;
	(1, 0, 0, 0): 0.2, 0.8;
	(0, 1, 0, 0): 0.4, 0.6;
	(0, 0, 1, 0): 0.2, 0.8;
	(0, 0, 0, 1): 0.1, 0.9;
}

probability(NtGrbld | AppData, PrtDriver, PrtMem, NtwrkCnfg)
{
	function: max;
	(0, 0, 0, 0): 1, 0;
	(1, 0, 0, 0): 0.3, 0.7;
	(0, 1, 0, 0): 0.4, 0.6;
	(0, 0, 1, 0): 0.2, 0.8;
	(0, 0, 0, 1): 0.4, 0.6;
}

probability(NnPSGrphc | PrtMem, GrphcsRltdDrvrSttngs, EPSGrphc)
{
	function: max;
	(0, 0, 0): 0.999, 0.001;
	(1, 0, 0): 0.25, 0.75;
	(0, 1, 0): 0.1, 0.9;
	(0, 0, 1): 0, 1;
}

probability(REPEAT | CblPrtHrdwrOK, NtwrkCnfg)
{
	function: max;
	(0, 0): 1, 0;
	(1, 0): 0.5, 0.5;
	(0, 1): 0.5, 0.5;
}

probability(PrtTimeOut)
{
	0.94, 0.06;
}

probability(PrtPScript)
{
	0.4, 0.6;
}

probability(AvlblVrtlMmry | PrtPScript)
{
	(0): 0.98, 0.02;
	(1): 1, 0;
}

probability(PSERRMEM | PrtPScript, AvlblVrtlMmry)
{
	(0, 0): 1, 0;
	(0, 1): 0.05, 0.95;
	(1, 0): 1, 0;
	(1, 1): 1, 0;
}

probability(TstpsTxt | PrtPScript, AvlblVrtlMmry)
{
	(0, 0): 0.999, 0.000999987;
	(0, 1): 0.000999987, 0.999;
	(1, 0): 1, 0;
	(1, 1): 1, 0;
}

probability(GrbldPS | GrbldOtpt, AvlblVrtlMmry)
{
	function: max;
	(0, 0): 1, 0;
	(1, 0): 0, 1;
	(0, 1): 0.1, 0.9;
}

probability(IncmpltPS | CmpltPgPrntd, AvlblVrtlMmry)
{
	function: max;
	(0, 0): 1, 0;
	(1, 0): 0, 1;
	(0, 1): 0.3, 0.7;
}

probability(EPSGrphc)
{
	0.99, 0.01;
}

probability(PSGRAPHIC | PrtMem, GrphcsRltdDrvrSttngs, EPSGrphc)
{
	function: max;
	(0, 0, 0): 0.999, 0.001;
	(1, 0, 0): 0.25, 0.75;
	(0, 1, 0): 0.1, 0.9;
	(0, 0, 1): 1, 0;
}

probability(FllCrrptdBffr)
{
	0.85, 0.15;
}

probability(AppOK)
{
	0.995, 0.005;
}

probability(DataFile)
{
	0.995, 0.005;
}

probability(PrtFile | PrtDataOut)
{
	(0): 0.8, 0.2;
	(1): 0.2, 0.8;
}

probability(PrtIcon | NtwrkCnfg, PTROFFLINE)
{
	function: max;
	(0, 0): 0.9999, 0.0001;
	(1, 0): 0.25, 0.75;
	(0, 1): 0.7, 0.3;
}

probability(Problem6 | GrbldOtpt, PrtPScript, GrbldPS)
{
	(0, 0, 0): 1, 0;
	(0, 0, 1): 0, 1;
	(0, 1, 0): 1, 0;
	(0, 1, 1): 1, 0;
	(1, 0, 0): 1, 0;
	(1, 0, 1): 0, 1;
	(1, 1, 0): 0, 1;
	(1, 1, 1): 0, 1;
}

probability(Problem3 | CmpltPgPrntd, PrtPScript, IncmpltPS)
{
	(0, 0, 0): 0, 1;
	(0, 0, 1): 1, 0;
	(0, 1, 0): 0, 1;
	(0, 1, 1): 0, 1;
	(1, 0, 0): 0, 1;
	(1, 0, 1): 1, 0;
	(1, 1, 0): 1, 0;
	(1, 1, 1): 1, 0;
}

probability(NtSpd | DeskPrntSpd, NtwrkCnfg, PrtQueue)
{
	function: max;
	(0, 0, 0): 0.999, 0.000999987;
	(1, 0, 0): 0, 1;
	(0, 1, 0): 0.25, 0.75;
	(0, 0, 1): 0.25, 0.75;
}

probability(Problem2 | NetPrint, DeskPrntSpd, NtSpd)
{
	(0, 0, 0): 1, 0;
	(0, 0, 1): 1, 0;
	(0, 1, 0): 0, 1;
	(0, 1, 1): 0, 1;
	(1, 0, 0): 1, 0;
	(1, 0, 1): 0, 1;
	(1, 1, 0): 1, 0;
	(1, 1, 1): 0, 1;
}

probability(PrtQueue)
{
	0.99, 0.01;
}

probability(PrtStatPaper | PrtPaper)
{
	(0): 0.999, 0.000999987;
	(1): 0.000999987, 0.999;
}

probability(PrtStatToner | TnrSpply)
{
	(0): 0.999, 0.000999987;
	(1): 0.000999987, 0.999;
}

probability(PrtStatMem | PrtMem)
{
	(0): 0.999, 0.000999987;
	(1): 0.2, 0.8;
}

probability(PrtStatOff | PrtOn)
{
	(0): 0.99, 0.00999999;
	(1): 0.00999999, 0.99;
}

probability(TnrSpply)
{
	0.995, 0.005;
}

probability(PTROFFLINE)
{
	0.7, 0.3;
}

partitions
{
	node PC2PRT
	{
		level 0 parent NetPrint,
		level 1 state 0,
		level 2 parent DSApplctn,
		level 3 state 0,
		level 4 parent DS_LCLOK,
		level 5 state 0,
		level 5 state 1,
		level 3 state 1,
		level 4 parent PrtDataOut,
		level 5 state 0,
		level 6 parent LclOK,
		level 7 state 0,
		level 7 state 1,
		level 5 state 1,
		level 1 state 1,
		level 2 parent DSApplctn,
		level 3 state 0,
		level 4 parent DS_NTOK,
		level 5 state 0,
		level 5 state 1,
		level 3 state 1,
		level 4 parent PrtDataOut,
		level 5 state 0,
		level 6 parent NetOK,
		level 7 state 0,
		level 7 state 1,
		level 5 state 1
	}

	node Problem4
	{
		level 0 parent PrtPScript,
		level 1 state 0,
		level 2 parent PSGRAPHIC,
		level 3 state 0,
		level 3 state 1,
		level 1 state 1,
		level 2 parent NnPSGrphc,
		level 3 state 0,
		level 3 state 1
	}

	node Problem5
	{
		level 0 parent TrTypFnts,
		level 1 state 0,
		level 2 parent TTOK,
		level 3 state 0,
		level 3 state 1,
		level 1 state 1,
		level 2 parent NnTTOK,
		level 3 state 0,
		level 3 state 1
	}

	node GrbldOtpt
	{
		level 0 parent NetPrint,
		level 1 state 0,
		level 2 parent LclGrbld,
		level 3 state 0,
		level 3 state 1,
		level 1 state 1,
		level 2 parent NtGrbld,
		level 3 state 0,
		level 3 state 1
	}

	node TstpsTxt
	{
		level 0 parent PrtPScript,
		level 1 state 0,
		level 2 parent AvlblVrtlMmry,
		level 3 state 0,
		level 3 state 1,
		level 1 state 1
	}

	node Problem6
	{
		level 0 parent PrtPScript,
		level 1 state 0,
		level 2 parent GrbldPS,
		level 3 state 0,
		level 3 state 1,
		level 1 state 1,
		level 2 parent GrbldOtpt,
		level 3 state 0,
		level 3 state 1
	}

	node Problem3
	{
		level 0 parent PrtPScript,
		level 1 state 0,
		level 2 parent IncmpltPS,
		level 3 state 0,
		level 3 state 1,
		level 1 state 1,
		level 2 parent CmpltPgPrntd,
		level 3 state 0,
		level 3 state 1
	}

	node Problem2
	{
		level 0 parent NetPrint,
		level 1 state 0,
		level 2 parent DeskPrntSpd,
		level 3 state 0,
		level 3 state 1,
		level 1 state 1,
		level 2 parent NtSpd,
		level 3 state 0,
		level 3 state 1
	}
}
