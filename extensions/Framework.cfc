component extends="framework.one" {
	
	/* http://framework-one.github.io/documentation/4.2/developing-applications.html#configuring-fw1-applications */
	variables.framework = {
		action = 'do'
		, defaultitem = 'home'
		, password = 'app'
		, generateSES = true
		, SESOmitIndex = false
		, reloadApplicationOnEveryRequest = true
		, trace = true
	};
	
	function init( config = {} ) {
		super.init( config );
		// this is not getting processed
		addRoute( '/a', '/main/home' );
		return this;
	}
	
	public any function setupApplication() {
	}	
	
	public void function setupRequest(){
	}
	
	
	public void function setupView( required struct rc ){
		
	}
	
	public void function setupResponse( required struct rc ){
		
	}
	
	public void function before( required struct rc ){	
	}
	
	
	
} 
