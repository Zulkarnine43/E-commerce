<?php

Route::get('/admin/page',[
    'uses' =>'adminController@admin',
    'as' =>'admin'
]);
Route::get('/farmer/Info',[
    'uses' =>'adminController@all_farmers',
    'as' =>'all_farmers'
]);
Route::get('/customers/Info',[
    'uses' =>'adminController@all_customers',
    'as' =>'all_customers'
]);
Route::get('/home/add',[
    'uses' =>'adminController@home_add',
    'as' =>'home_add'
]);

Route::post('/home/add/save',[
    'uses' =>'adminController@save_home_add',
    'as' =>'save_home_add'
]);
Route::get('/home/manage',[
    'uses' =>'adminController@manage_home_add',
    'as' =>'manage_home_add'
]);
Route::get('/home/delete/{id}',[
    'uses' =>'adminController@home_delete',
    'as' =>'home_delete'
]);

Route::get('/home/crop/details/{id}',[
    'uses' =>'adminController@home_details',
    'as' =>'home_details'
]);


Route::get('/gallary/add',[
    'uses' =>'adminController@gallary_add',
    'as' =>'gallary_add'
]);

Route::post('/gallary/add/save',[
    'uses' =>'adminController@gallary_save',
    'as' =>'gallary_save'
]);
Route::get('/gallary/manage',[
    'uses' =>'adminController@manage_gallary',
    'as' =>'manage_gallary'
]);
Route::get('/gallary/delete/{id}',[
    'uses' =>'adminController@gallary_delete',
    'as' =>'gallary_delete'
]);

Route::get('/manage/add/crop',[
    'uses' =>'adminController@farmer_manage_add_crop',
    'as' =>'farmer_manage_add_crop'
]);

Route::get('/manage/crop/delete/{id}',[
    'uses' =>'adminController@delete_crop',
    'as' =>'delete_crop'
]);
Route::get('/manage/search',[
    'uses' =>'adminController@search',
    'as' =>'search'
]);


Route::get('/show/collection',[
    'uses' =>'adminController@admin_show_collection',
    'as' =>'admin_show_collection'
]);

Route::get('/admin/show/details/{email}',[
    'uses' =>'adminController@admin_Show_Farmer_details',
    'as' =>'admin_Show_Farmer_details'
]);

Route::get('admin/show/crop/details/{id}',[
    'uses' =>'adminController@admin_show_crop_details',
    'as' =>'admin_show_crop_details'
]);


Route::get('/',[
    'uses'=>'my_homeController@index',
    'as'=>'index'
]);
Route::get('/services',[
    'uses' =>'my_homeController@services',
    'as' =>'services'
]);
Route::get('/contact',[
    'uses' =>'my_homeController@contact_us',
    'as' =>'contact_us'
]);
Route::get('/about_us',[
    'uses' =>'my_homeController@about_us',
    'as' =>'about_us'
]);
Route::get('/gallary',[
    'uses' =>'my_homeController@gallary',
    'as' =>'gallary'
]);


Route::get('/search',[
    'uses' =>'my_homeController@search',
    'as' =>'search'
]);

Route::get('/search_details/{id}',[
    'uses' =>'my_homeController@search_details',
    'as' =>'search_details'
]);

Route::post('/add/cart',[
    'uses' =>'cartController@add_cart',
    'as' =>'add_cart'
]);

Route::get('/add/carts/{id}/{qty}',[
    'uses' =>'cartController@direct_add_carts',
    'as' =>'direct_add_carts'
]);


Route::get('/cart/details',[
    'uses' =>'cartController@cart_details',
    'as' =>'cart_details'
]);

Route::get('/cart/delete/{id}',[
    'uses' =>'cartController@cart_delete',
    'as' =>'cart_delete'
]);

Route::get('/shipping/{id}/{qty}/{sum}',[
    'uses' => 'cartController@shipping_form',
    'as' => 'shipping_form'
]);

Route::post('/shipping/save',[
    'uses' => 'cartController@shippingGoes',
    'as' => 'shippingGoes'
]);

Route::get('/cart/order',[
    'uses' =>'orderController@order_info',
    'as' =>'order_info'
]);

Route::get('/Order/details/{id}',[
    'uses' =>'orderController@order_details',
    'as' =>'order_details'
]);

Route::get('/download/Info/{id}',[
    'uses' =>'orderController@downloadInfo',
    'as' =>'downloadInfo'

]);

Route::get('/message/reply/{id}/{product_name}/{farmer_email}',[
    'uses' =>'replymessageController@confirm_reply',
    'as' =>'confirm_reply'
]);
Route::post('/cust/message',[
    'uses' => 'replymessageController@cust_message',
    'as' => 'cust_message'
]);

Route::get('/farmer/register',[
    'uses' =>'farmersController@farmer_register',
    'as' =>'farmer_register'
]);

Route::post('/farmer/register/save',[
    'uses' =>'farmersController@registerSave',
    'as' =>'registerSave'
]);

Route::get('/farmer/register/verify',[
    'uses' =>'farmersController@registerVerify',
    'as' =>'registerVerify'
]);

Route::get('/farmer/login',[
    'uses' =>'farmersController@farmer_login',
    'as' =>'farmer_login'
]);

Route::post('/farmer/login/check',[
    'uses' =>'farmersController@farmer_login_check',
    'as' =>'farmer_login_check'
]);
Route::get('/farmer/page/home',[
    'uses' =>'farmersController@farmer_home_page',
    'as' =>'farmer_home_page'
]);
Route::get('/farmer/Import/page',[
    'uses' =>'farmersController@Import_page',
    'as' =>'Import_page'
]);
Route::post('/farmer/Import/crop',[
    'uses' =>'farmersController@crops_import',
    'as' =>'crops_import'
]);
Route::get('/farmer/manage/page',[
    'uses' =>'farmersController@manage_page',
    'as' =>'manage_page'
]);
Route::get('/farmer/delete/{id}',[
    'uses' =>'farmersController@delete_fruit',
    'as' =>'delete_fruit'
]);
Route::get('/manage/crop/edit/{id}',[
    'uses' =>'farmersController@edit_fruit',
    'as' =>'edit_fruit'
]);
Route::post('/crops_update/{id}',[
    'uses' =>'farmersController@crops_update',
    'as' =>'crops_update'
]);
Route::get('/customer/Info',[
    'uses' =>'farmersController@customer_info',
    'as' =>'customer_info'
]);
Route::get('/farmer/collection',[
    'uses' =>'farmersController@collection',
    'as' =>'collection'
]);
Route::get('/farmer/crop/details/{id}',[
    'uses' =>'farmerdetailsController@farmer_home_details',
    'as' =>'farmer_home_details'
]);

Route::get('/farmer/notification',[
    'uses' =>'farmersController@notification',
    'as' =>'notification'
]);

Route::get('/Farmer/show/details/{email}',[
    'uses' =>'Farmer_show_details@Farmer_show_detail',
    'as' =>'Farmer_show_details'
]);


Route::get('/farmer/show/crop/details/{id}',[
    'uses' =>'Farmer_show_details@farmer_crop_details',
    'as' =>'farmer_crop_details'
]);




Route::get('/customer/register',[
    'uses' =>'customersController@customer_register',
    'as' =>'customer_register'
]);

Route::post('/customer/register/save',[
    'uses' =>'customersController@CustregisterSave',
    'as' =>'CustregisterSave'
]);

Route::get('/customer/register/verify',[
    'uses' =>'customersController@registerVerify',
    'as' =>'cust_registerVerify'
]);


Route::get('/customer/login',[
    'uses' =>'customersController@customer_login',
    'as' =>'customer_login'
]);
Route::post('/customer/login/check',[
    'uses' =>'customersController@cust_login_check',
    'as' =>'cust_login_check'
]);
Route::get('/customer/page/home',[
    'uses' =>'customersController@customer_home_page',
    'as' =>'customer_home_page'
]);

Route::get('/farmer/info',[
    'uses' =>'customersController@farmer_info',
    'as' =>'farmer_info'
]);

Route::get('/collection/info',[
    'uses' =>'customersController@Collection_Info',
    'as' =>'collection_info'
]);
Route::get('/crop/details/{id}',[
    'uses' =>'customersController@crop_details',
    'as' =>'crop_details'
]);
Route::post('/message/send',[
    'uses' =>'customersController@sendMessage',
    'as' =>'sendMessage'
]);

Route::get('/cust/notification',[
    'uses' =>'customersController@cust_notification',
    'as' =>'cust_notification'
]);


Auth::routes(['verify' =>'true']);

Route::get('/home', 'HomeController@index')->name('home')->middleware('verified');
//Route::get('/admin/page', 'adminController@admin')->name('admin')->middleware('verified');
