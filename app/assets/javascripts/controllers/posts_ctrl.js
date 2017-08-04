app.controller('PostsCtrl', ['$log','$scope','Post', 'action','$stateParams','orderByFilter', function ($log,$scope, Post, action, $stateParams,orderBy) {
    var ctrl = this;
    // Код отработает только для  '/posts'
    action('index', function(response){

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
     
      $scope.propertyName = 'title';
      $scope.reverse = true;
      //$scope.posts = orderBy(posts, $scope.propertyName, $scope.reverse);

      $scope.sortBy = function(propertyName) {
        $scope.reverse = ($scope.propertyName === propertyName) ? !$scope.reverse : false;
        $scope.propertyName = propertyName;
        //$scope.posts = orderBy($scope.posts, $scope.propertyName, $scope.reverse);
      };
    });

    // Вызовется для паттерна '/posts/:id'
    action('show', function (params){
      ctrl.post = Post.get({id: params.id});
    });

    // Только для '/posts/new'
    action('new', function(){
      ctrl.post = Post.new();
      // Присваивание каллбека создания, который будет вызван автоматически при сабмите формы. См. ниже.
      ctrl.save = Post.create;
    });

    // Для паттерна '/posts/:id/edit'
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

    // Так же внутри ресурса routes.rb можно создать свой кастомный метод. Вызовется для: '/posts/some_method'
    action('some_method', function(){
      //
    })

    // etc
  }])