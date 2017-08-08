/*
= require oxymoron/underscore
= require oxymoron/angular
= require oxymoron/angular-resource
= require oxymoron/angular-cookies
= require oxymoron/angular-ui-router
= require oxymoron/ng-notify
= require oxymoron
= require_self
= require_tree ./controllers
= require angular-ui-bootstrap
= require angular-ui-bootstrap-tpls
*/

var app = angular.module("app", ['ui.bootstrap','ui.router', 'oxymoron']);

app.config(['$stateProvider', function ($stateProvider) {
 	$stateProvider.rails()
    

}]);
//.factory('Tag', ['$resource', 'resourceDecorator', function ($resource, resourceDecorator) {
//      return resourceDecorator($resource('/receive/:body.json', {"body":"@id"},{"receive":{"method":"GET","url":"/receive/body:.json"}}));
//}]);



