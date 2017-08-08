app.controller('PostsCtrl', ['$http','$log','$scope','$location','Post','Category','Tag','Tagging','action','$stateParams','orderByFilter','$http', function ($http,$log,$scope,$location, Post, Category, Tag,Tagging, action, $stateParams,orderBy,$http) {
    var ctrl = this;
    action('index', function(response){
      
      $scope.cats = Category.query();
      console.log($scope.cats);
      $scope.posts = Post.query();
      
      $scope.currentPage = 1;
      $scope.itemsPerPage = 4;
      $scope.maxSize = 5; 
      $scope.totalItems = 6;

      $scope.setPage = function (pageNo) {
        $scope.currentPage = pageNo;
      };

      $scope.pageChanged = function() {
        console.log('Page changed to: ' + $scope.currentPage);
      };
  
     
      $scope.propertyName = 'created_at';
      $scope.reverse = true;

      $scope.cansel = true;
      $scope.hasReversed = function(propertyName) {
        $scope.propertyName = propertyName ;
        $scope.reverse = ($scope.propertyName === propertyName) ? !$scope.reverse : false;
        $scope.currentPage = 1;
      };
      $scope.hasCat = function(propertyName) {
        $scope.filtCat = propertyName;
        $scope.propertyName = propertyName ; 
        //if($scope.propertyName === propertyName){
          //$scope.cansel = !$scope.cansel;
        //};
        //if($scope.cansel == true){
          //console.log('change');
          //$scope.filtCat = !$scope.filtCat;
        //};
        $scope.currentPage = 1;
      };
      $scope.showCat = function(cat_id){
        //Category.get({id: 3});
        return cat_id;
      };
      $scope.prooF = function(mod_id,cat_id,cat){
        if(mod_id == cat_id){
          console.log(cat);
          return cat;
        }else{
        }
      };
      
    });

    action('show', function (params,response){
      ctrl.post = Post.get({id: params.id});
      $scope.post_id = params.id;

      $scope.text = "text";
      $scope.tags = Tag.query();
      $scope.taggings = Tagging.query();
      $scope.prooF = function(mod_id,tag_id,tag){
        if(mod_id == tag_id){
          console.log(tag);
          return tag;
        }else{
        }
      };
      
    });

    action('new', function(){
      ctrl.post = Post.new();
      $scope.tags = [];
      $scope.addTag = function(tag){
        $scope.tags.push(tag);
        Tag.create({body: tag});
        //$scope.tage= Tag.receive({body: tag});//not working
        //console.log($scope.tage);
        //Tagging.create({
          //post_id: 10,
          //tag_id: 3
        //});
        
      };
      
      // Присваивание каллбека создания, который будет вызван автоматически при сабмите формы. См. ниже.
      ctrl.save = Post.create;
    });

    action('edit', function (params){
      ctrl.post = Post.edit({id: params.id});
      // Аналогичное присваивание для каллбека обновления
      ctrl.save = Post.update;
    })

    // Общий код. Вызовется для двух методов edit и new.
    action(['edit', 'new'], function(){
      //
    })

    action(['index', 'edit', 'show'], function () {
      ctrl.destroy = function (post) {
        Post.destroy({id: post.id}, function () {
          ctrl.posts = _.select(ctrl.posts, function (_post) {
            return _post.id != post.id
          })
        })
      }
    })

    action(['index','show','new'], function(){
      
    })

    // Так же внутри ресурса routes.rb можно создать свой кастомный метод. Вызовется для: '/posts/some_method'
    action('some_method', function(){
      //
    })



    // etc
  }])