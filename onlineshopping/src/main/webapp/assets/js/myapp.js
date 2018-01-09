$(function() {
	//solving the active menu problem
	switch(menu){
	
	case 'About us':
		$('#about').addClass('active');
		break;
		
	case 'Contact us':
		$('#contact').addClass('active');
		break;
	case 'All Products':
		$('#listProducts').addClass('active');
		break;
	default:
		if(menu == "Home") break;
		$('#listProducts').addClass('active');
		$('#a_'+menu).addClass('active');
		break;
	}
	
	
	// code for jquery dataTable
/*	// create a dataset to static data test purposes
	var products = [
	                
	                	['1','ABC'],
	                	['2','DEF'],
	                	['3','GHI'],
	                	['4','JKL'],
	                	['5','MNO'],
	                	['6','PQR'],
	                	['7','STU'],
	                	['8','VWX']
	                	
	                ];*/
	var $table = $('#productListTable');
	
	// execute the below code only where we have this table
	if($table.length){	
		//console.log('Inside the table');
		
		//use when not using static data like above
		var jsonUrl = '';
		if(window.categoryId == ''){
			jsonUrl = window.contextRoot + '/json/data/all/products';
		}
		else{
			jsonUrl = window.contextRoot + '/json/data/category/'+ window.categoryId +'/products';
		}
		
		
		$table.DataTable({
			//without following two lines it will display default value length in webpage
			lengthMenu: [[3,5,10,-1], ['3 Records', '5 Records', '10 Records', 'ALL']],
			pageLength: 5,
/*			//using array name of 'products' used above
			data: products*/
			ajax: {
				url: jsonUrl,
				dataSrc: ''
			},
			columns: [
			          	{
			          		data: 'code',
			          		mRender: function(data, type, row){
			          			
			          			return '<img src="'+window.contextRoot+'/resources/images/'+data+'.jpg" class="dataTableImg"/>';
			          		}
			          	},
			          	{
			          		data: 'name'	
			          	},
			          	{
			          		data: 'brand'	
			          	},
			          	{
			          		data: 'unitPrice',	//should be same name with postman displaying
			          		mRender: function(data, type, row){
			          			return '&#8377; ' + data // &#8377 entity code for Indian Rupee
			          		}
			          	},
			          	{
			          		data: 'quantity',
			          		mRender: function(data, type, row){
			          			
			          			if(data < 1){
			          				
			          				return '<span style="color:red">Out of Stock!</span>';
			          			}
			          			return data;
			          			
			          		}
			          	},
			          	{
			          		data: 'id',
			          		bSortable: false, // to keep space between two buttons 
			          		mRender: function(data, type, row){
			          			
			          			var str = '';
			          			str += '<a href="'+window.contextRoot+'/show/'+data+'/product" class="btn btn-primary"><i class="fa fa-eye"></i></a> &#160;'; // add additional space &#160;
			          			
			          			if(row.quantity < 1){
			          				
			          				str += '<a href="javascript:void(0)" class="btn btn-success disabled"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>';
				          			
			          			}
			          			else{
			          				
			          				str += '<a href="'+window.contextRoot+'/cart/add/'+data+'/product" class="btn btn-success"><i class="fa fa-shopping-cart" aria-hidden="true"></i></a>';
				          				
			          			}
			          			
			          			
			          			return str;
			          			
			          		}
			          	}
			          	
			          ]
			
		});
	}
	
	
});