'use strict'

/*
|--------------------------------------------------------------------------
| Routes
|--------------------------------------------------------------------------
|
| Http routes are entry points to your web application. You can create
| routes for different URLs and bind Controller actions to them.
|
| A complete guide on routing is available here.
| http://adonisjs.com/docs/4.0/routing
|
*/

/** @type {typeof import('@adonisjs/framework/src/Route/Manager')} */
const Route = use('Route')

Route.get('/', () => {
  return { greeting: 'Hello world in JSON' }
})

Route.get('products', 'ProductController.index');
Route.post('products', 'ProductController.store');
Route.get('products/:id', 'ProductController.show');
Route.put('products/:id', 'ProductController.update');
Route.delete('products/:id', 'ProductController.destroy');

Route.group(() => {
  Route.get('settings', 'SettingController.index');
  Route.get('settings/:id', 'SettingController.show');
  Route.post('settings', 'SettingController.store');
  Route.put('settings/:id', 'SettingController.update');
  Route.delete('settings/:id', 'SettingController.destroy');  
}).prefix('api/v1')
