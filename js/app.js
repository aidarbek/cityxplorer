var myControllers = angular.module('myControllers', []).config(function($httpProvider){
	delete $httpProvider.defaults.headers.common['X-Requested-With'];
});
myControllers.service('User', function(){
    var data = {id: 0};
 
    return data; 
});
var myMap;
	var latitude;
    var longitude;
    var routing;
function route(from, to)
	{
		myMap.geoObjects.remove(routing);
		console.log(from);
		console.log(to);
		var NurOrda = {lng: 51.12711729999999, lat: 71.47900099999993};
		to = NurOrda;
		ymaps.route([[to.lng, to.lat], [from.lng, from.lat]], {mapStateAutoApply:true}).then(
		  function(route) {
		  	route.getPaths().options.set({
		        // в балуне выводим только информацию о времени движения с учетом пробок
		        balloonContentBodyLayout: ymaps.templateLayoutFactory.createClass('{{ properties.humanJamsTime }}'),
		        // можно выставить настройки графики маршруту
		        strokeColor: '0000ffff',
		        opacity: 0.9
		    });
		    routing = route;
		    myMap.geoObjects.add(routing);
		    //alert('Длина маршрута = ' + route.getHumanLength());
		  },
		  function(error) {
		  	console.log("No way!");
		    //alert('Невозможно построить маршрут');
		  }
		);
	}

function showLocation(position) {
            var lat = position.coords.latitude;
            var lng = position.coords.longitude;
            //alert("Latitude : " + latitude + " Longitude: " + longitude);

	        var from = {lng: longitude, lat: latitude};
	        var to = {lng: lng, lat: lat};
	        route(from, to);
         }

         function errorHandler(err) {
            if(err.code == 1) {
               alert("Error: Access is denied!");
            }else if( err.code == 2) {
               alert("Error: Position is unavailable!");
            }
         }

var way = function(lng, lat)
	{
		//alert(lng + " " + lat);
		longitude = lng;
		latitude = lat;
		if(navigator.geolocation){
               var options = {timeout:60000};
               navigator.geolocation.getCurrentPosition(showLocation, errorHandler, options);
            }else{
               alert("Sorry, browser does not support geolocation!");
            }
	};
myControllers.controller('Map_controller', ['$scope','User','$routeParams', 
function($scope, User, $routeParams)
{
	
            
	 
	$scope.way = function(lng, lat)
	{
		alert(lng + " " + lat);
		//var lat = to.lat;
		//var lng = to.lng;
		//var name = to.name;
		//alert("Check");
		//console.log(ymaps.geolocation.get());
		//alert(ymaps.geolocation.latitude + " " + ymaps.geolocation.longitude)
		if(navigator.geolocation){
               // timeout at 60000 milliseconds (60 seconds)
               var options = {timeout:60000};
               navigator.geolocation.getCurrentPosition(showLocation, errorHandler, options);
            }else{
               alert("Sorry, browser does not support geolocation!");
            }
        var from = {lng: longitude, lat: latitude};
        var to = {lng: lng, lat: lat};
		//navigator.geolocation.getCurrentPosition(f);
		//myMap.route([{type: "wayPoint", point: "51.15,71.45"}, {type: "viaPoint", point: "51.15,71.47"}]);
	}
	$scope.res = [];
        function init()
        { 
        	var res = $scope.res;
			//alert(res.length);
        	myMap = new ymaps.Map("map", {
                center: [51.15, 71.45],
                zoom: 13
            });
	        for(var i = 0; i < res.length; i++)
			{
				var place = res[i];
				var myPlacemark = new ymaps.Placemark([place.latitude, place.longitude], 
					{
						balloonContent: "<a href='#/place/"+place.id+"'>"+place.name+"</a><br>" + place.address + "<br><button onclick='way("+place.latitude+", "+place.longitude+")'>Draw a way</button>"
					});
				myMap.geoObjects.add(myPlacemark);
			}
			//way();
        }

	var id = $routeParams.id;
	if(!id)
	{
		id = 1;
	}
	/*$.ajax({
		url: "get_places.php?type="+id,
		method: "GET",
		success: function(data){
			var res = JSON.parse(data);
			//console.log(data);
			$scope.res = res;
			ymaps.ready(init);
		},
		error: function(err)
		{
			console.log(err);
		}
	});*/
	$.ajax({
		url: "get_places.php?type="+id,
		success: function(data)
		{
			var res = JSON.parse(data);
			$scope.res = res;
			ymaps.ready(init);
		}
	});
	$scope.places = [
		"Hotels",
		"Restaurants",
		"Gas stations",
		"Entertainments",
		"Malls",
		"Clothing stores",
		"Sports",
		"Universities",
		"Hospitals",
		"Taxi"
	];

	if(User.data)
	{
		$scope.user = User.data;
	}
	else
	{
		$scope.user = {id: 0};
	}
    $scope.myMap = myMap;
}]);

myControllers.controller('Fav', ['$scope', 'User', '$http', function($scope, User, $http){

	$scope.user = {};
	if(User.data)
	{
		$scope.user = User.data;
	}
	else
	{
		$scope.user = {id: 0};
	}
	if($scope.user.id)
	{
		$scope.places = [];
		$http({
			url: 'get_bookmarks.php?user_id='+$scope.user.id,
			method: 'GET'
		}).success(function(res){
			$scope.places = res;
		});
	}
}]);


myControllers.controller('User_login', ['$scope', 'User', function($scope, User){

	//$scope.user = {};
	$scope.login = function(){
		//alert($scope.user.name + " " + $scope.user.mail + " " + $scope.user.password);
		//alert("Yep");
		//$scope.data = 1;
		$.ajax({
			url: "user.php",
			data: $scope.user,
			method: "POST",
			success: function(data)
			{
				console.log(data);
				res = JSON.parse(data);
				if(res.error)
				{
					$("#login_message").html('<div class="uk-alert uk-alert-danger" data-uk-alert><a href="" class="uk-alert-close uk-close"></a><p>'+res.error+'</p></div>');
				}
				else
				{
					//alert($scope.data);
					//alert(User.data);
					User.data = res;
					//$scope.user = res;
					//alert(User.data.id);
					window.location = "#/";
					//alert(res.id);
					//$scope.user = res;
					//window.location.replace("#/");
					//$("#login_message").html('<div class="uk-alert uk-alert-success" data-uk-alert><a href="" class="uk-alert-close uk-close"></a><p>success</p></div>');
				}
			}
		});
	}
}]);

myControllers.controller('User_register', ['$scope', '$http', function($scope){
	$scope.user = {};
	$scope.register = function(){
		//alert($scope.user.name + " " + $scope.user.mail + " " + $scope.user.password);
		$.ajax({
			url: "user.php?type=register",
			data: $scope.user,
			method: "POST",
			success: function(data)
			{
				//console.log(data);
				res = JSON.parse(data);
				if(res.error)
				{
					$("#register_message").html('<div class="uk-alert uk-alert-danger" data-uk-alert><a href="" class="uk-alert-close uk-close"></a><p>'+res.error+'</p></div>');
				}
				else
				{
					$("#register_message").html('<div class="uk-alert uk-alert-success" data-uk-alert><a href="" class="uk-alert-close uk-close"></a><p>'+res.success+'</p></div>');
				}
			}
		});
	}
}]);
myControllers.controller('Place_controller', ['$scope','User','$routeParams','$http', function($scope, User, $routeParams, $http){
	//alert("Hi");
	
	var id = $routeParams.id;
	//alert(id);
	if(User.data)
	{
		$scope.user = User.data;
	}
	else
	{
		$scope.user = {id: 0};
	}
	$scope.newReview = {body: "", place_id: id, name: $scope.user.name, user_id: $scope.user.id};

	$scope.places = [];
	$scope.reviews = [];
	$scope.available = 0;
	$scope.recommendations = [];

	$scope.check = function()
	{
		$.ajax({
			url: "review_available.php?user_id=" + $scope.user.id + "&place_id="+id,
			success: function(str){
				data = JSON.parse(str);
				//alert(data.available);
				$scope.available = data.available;
			}
		});
	};
	$scope.check();
	$scope.rate = function(rating)
	{
		//alert(rating);
		$scope.newReview.rating = rating;
	};
	get_reviews = function(){
		console.log("Reviews loaded");
		$.ajax({
			url: "get_reviews.php?place_id=" + id,
			success: function(data){
				var res = JSON.parse(data);
				$scope.reviews = res;
			}
		});
	}
	get_reviews();
	$scope.add_review = function(){
		if($scope.newReview.body.length && $scope.newReview.rating)
		{
			$.ajax({
				url: "add_review.php",
				data: $scope.newReview,
				method: "POST",
				success:function(data){
					console.log(data);
					var copy = $scope.newReview;
					$scope.newReview.body = "";
					$scope.newReview.rating = 0;
					
					$("#available").html("");

					$("#success_field").html('<div class="uk-alert">You added a new review!</div>');
					$("#reviewBody").val("");
					//get_reviews();
				}
			});
		}
		else
		{
			alert("You should leave comment and rating!");
		}
	};
	/*
	$http({
        url: "get_reviews.php?place_id="+id, 
        method: "GET"
     }).success(function(response){
         $scope.reviews = response;
         console.log($scope.reviews);
         get_reviews();
         //$("#success_fields").html("<div></div>");
         //console.log($scope.place.name);
     }).error(function(response){
     });*/

	$scope.recHost = "recommends.php";
	$scope.recs = [];
	$scope.tmp = {};

	if($scope.user.id)
	{
		//console.log($scope.recHost + "?user_id=" + $scope.user.id);
		
		//delete $http.defaults.headers.common['X-Requested-With'];
		
		$http({
			url: $scope.recHost + "?user_id="+$scope.user.id
		}).success(function(data){
			//console.log(data);
			for(var i = 0; i < data.length; i++)
			{
				//console.log($scope.tmp);
				arr = {id: data[i][0], name: data[i][1]};
				$scope.recs.push(arr);
				//console.log($scope.tmp);
				//console.log($scope.recs[i]);
			}
			//console.log($scope.recs);

		}).error(function(err){
			console.log("err");
		});
		/*$.ajax({
			url: $scope.recHost,
			//dataType: 'jsonp',
			data: {user_id: $scope.user.id},
			success: function(res)
			{
				console.log(res);
				//console.log(res);
			},
			error: function(req, status, error)
			{
				console.log("error");
				//console.log(status);
				//console.log(error);
			}
		});*/
		     
	}

	$http({
        url: "get_place.php?id="+id, 
        method: "GET"
     }).success(function(response){
         $scope.place = response;
         //console.log($scope.place.name);
     }).error(function(response){
     });

     $scope.add_fav = function(){
     	$.ajax({
     		url: "add_bookmark.php",
     		data: 
     		{
     			user_id: $scope.user.id, 
     			place_id: $scope.place.id, 
     			name: $scope.place.name,
     			address: $scope.place.address
     		},
     		method: "POST",
     		success: function(data)
     		{
     		},
     		error: function(err)
     		{
     		}
     	});
     };
}]);

var myApp = angular.module('myApp', ["ngRoute", "myControllers"]);
myApp.config(["$routeProvider", function($routeProvider) {
    $routeProvider.when("/map/:id", {
        templateUrl: "map_view.html",
        controller: "Map_controller"
    }).when("/register", {
    	templateUrl: "user_register.html",
        controller: "User_register"
    }).when("/login", {
    	templateUrl: "user_login.html",
        controller: "User_login"
    }).when("/fav", {
    	templateUrl: "fav.html",
        controller: "Fav"
	}).when("/place/:id", {
    	templateUrl: "place.html",
        controller: "Place_controller"
    }).otherwise({
        templateUrl: "map_view.html",
        controller: "Map_controller"
    });
}]);
