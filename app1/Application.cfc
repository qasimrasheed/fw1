component extends="fw1.extensions.Core" {
	
	this.name = Hash( getCurrentTemplatePath() ) & '-app1';
	
	function _get_framework_one() {
		if ( !StructKeyExists( request, '_framework_one' ) ) {
			request._framework_one = new app.Framework( {
				'base' : '/fw1/extensions/app1'
				, routes : [
					{ '/home' : 'main/home' }
				]
			});
        }
        return request._framework_one;
	}
	
}  