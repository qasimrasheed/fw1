# fw1
This sample assume an existing CF mapping for /framework

Clone the repository in the webroot (folder fw1)

Run the app using http://localhost/fw1/app1

The route defined in app1/Application.cfc works /fw1/index.cfm/home

The route define in /extensions/Framework.cfc using addRoute method doesn't work e.g. /fw1/index.cfm/a
