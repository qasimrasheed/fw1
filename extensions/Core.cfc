component {

	this.applicationTimeout 	= CreateTimeSpan( 3, 0, 0, 0 );
	this.sessionManagement = false;
		
	/* A structure that contains ColdFusion mappings. The mappings that you define here take precedence over the mappings defined in the Administrator  */
	this.mappings = {
		'/framework' : ExpandPath( '/cfextensions/wddms/externals/framework/4_2/' )
		, '/app' : ExpandPath( '/test/extensions' )
	};
		
	function _get_framework_one() {
		throw( 'Implement this method in inherited components' );
	}
	

	// delegation of lifecycle methods to FW/1. DO NOT change:
	public any function onError ( required any Exception, string event ){
		return _get_framework_one().onError( exception, event );
	}
	
    function onApplicationStart() {
        return _get_framework_one().onApplicationStart();
    }
    function onRequest( targetPath ) {
        return _get_framework_one().onRequest( targetPath );
    }
    function onRequestEnd() {
        return _get_framework_one().onRequestEnd();
    }
    function onRequestStart( targetPath ) {
        return _get_framework_one().onRequestStart( targetPath );
    }
	
}

