	
	/* Popup Finder Window Code */ 
	var myWindow = null;
	function finderWindow(url,title,width,height) 
	{
	 	//var width = 900;
	    //var height = 600;
	    var left = parseInt((screen.availWidth/2) - (width/2));
	    var top = parseInt((screen.availHeight/2) - (height/2));
	    var windowFeatures = "width=" + width + ",height=" + height + ",maximize=no,status=no,resizable=0,left=" + left + ",top=" + top + "screenX=" + left + ",screenY=" + top;
	    myWindow = window.open(url, title, windowFeatures);	
	}	
	
	function parent_disable() 
	{
		if(myWindow && !myWindow.closed)
			myWindow.focus();
	}