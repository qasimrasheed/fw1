component extends="test.extensions.Core" {
	
	this.name = Hash( getCurrentTemplatePath() ) & '-app2';
	
	function _get_framework_one() {
		if ( !StructKeyExists( request, '_framework_one' ) ) {
			request._framework_one = new app.Framework( {
				'base' : '/test/extensions/app2'
				, routes : [
					{ '/home' : 'main/home' }
				]
			});
        }
        return request._framework_one;
	}
	
}  