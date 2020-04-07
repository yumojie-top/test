  	$(function(){
  		
  		$("#page1").load("newsManage.html");




        //隐藏列表
        $("#hideNewsContent").click(function(){



            $("#newsManagePage").css("display","none");
            $("#newsTypePage").css("display","none");
            $("#newsCommentsPage").css("display","none");
            $("#newsBannersPage").css("display","none");

            $("#hideNewsContent").css("display","none");
            $("#showNewsContent").css("display","inline");
        });

        //显示列表
        $("#showNewsContent").click(function(){



            $("#newsManagePage").css("display","");
            $("#newsTypePage").css("display","");
            $("#newsCommentsPage").css("display","");
            $("#newsBannersPage").css("display","");

            $("#hideNewsContent").css("display","inline");
            $("#showNewsContent").css("display","none");
        });


        //隐藏用户中心
        $("#hideUserCenter").click(function(){


            $("#authortiyManagementPage").css("display","none");
            $("#addUserPage").css("display","none");
            $("#removeUserPage").css("display","none");
            $("#updateUserPage").css("display","none");
            $("#searchUserPage").css("display","none");

            $("#hideUserCenter").css("display","none");
            $("#showUserCenter").css("display","inline");
        });

        //显示用户中心
        $("#showUserCenter").click(function(){


            $("#authortiyManagementPage").css("display","");
            $("#addUserPage").css("display","");
            $("#removeUserPage").css("display","");
            $("#updateUserPage").css("display","");
            $("#searchUserPage").css("display","");

            $("#hideUserCenter").css("display","inline");
            $("#showUserCenter").css("display","none");
        });

        //隐藏日志中心
        //隐藏列表
        $("#hideNewsLog").click(function(){



            $("#pressReleaseLog").css("display","none");
            $("#newsAuditLog").css("display","none");


            $("#hideNewsLog").css("display","none");
            $("#showNewsLog").css("display","inline");
        });

        //显示列表
        $("#showNewsLog").click(function(){


            $("#pressReleaseLog").css("display","");
            $("#newsAuditLog").css("display","");

            $("#hideNewsLog").css("display","inline");
            $("#showNewsLog").css("display","none");
        });



        //隐藏帮助中心
        //隐藏列表
        $("#hideHelpContent").click(function(){



            $("#backgroundManual").css("display","none");
            $("#announcements").css("display","none");


            $("#hideHelpContent").css("display","none");
            $("#showHelpContent").css("display","inline");
        });

        //显示列表
        $("#showHelpContent").click(function(){


            $("#backgroundManual").css("display","");
            $("#announcements").css("display","");

            $("#hideHelpContent").css("display","inline");
            $("#showHelpContent").css("display","none");
        });

  		
			//左边单击事件

			//新闻管理
  			$("#newsManagePage").click(function(){
  				$("#news1").trigger('click');
  				
  			});
  			
  			$("#newsTypePage").click(function(){
  				$("#news2").trigger('click');
  			});
  			
  		
  			$("#newsCommentsPage").click(function(){
  				$("#news3").trigger('click');
  			});
  			
  			$("#newsBannersPage").click(function(){
  				$("#news4").trigger('click');
  			});


  			//用户中心
  			$("#authortiyManagementPage").click(function(){
  				$("#news5").trigger('click');
  			});
  			
  			$("#addUserPage").click(function(){
  				$("#news6").trigger('click');
  			});
  			
  		
  			$("#removeUserPage").click(function(){
  				$("#news7").trigger('click');
  			});
  			
  			$("#searchUserPage").click(function(){
  				$("#news8").trigger('click');
  			});
  			
  			$("#updateUserPage").click(function(){
  				$("#news9").trigger('click');
  			});

  			//日志中心

            $("#pressReleaseLog").click(function(){
                $("#news10").trigger('click');
            });


            $("#newsAuditLog").click(function(){
                $("#news11").trigger('click');
            });

            //帮助中心

            $("#backgroundManual").click(function(){
                $("#news12").trigger('click');
            });

            $("#announcements").click(function(){
                $("#news13").trigger('click');
            });

  		
  		
  		
  			//新闻管理
  		
  			//加载新闻管理页面
  			$("#news1").click(function(){
  				$("#news1").css("display","inline-block");
						$("#page1").load("newsManage.html");
  			});
  			
  			//加载新闻类型界面
  			$("#news2").click(function(){
				$("#news2").css("display","inline-block");
				$("#close2").css("display","");
  				$("#page2").load("newsType.html");
  			});
  			
  			//加载评论管理界面
  			$("#news3").click(function(){
				$("#news3").css("display","inline-block");
				$("#close3").css("display","");
  				$("#page3").load("Comments.html");
  			});
  			//加载图片管理界面
  			$("#news4").click(function(){
				$("#news4").css("display","inline-block");
				$("#close4").css("display","");
  				$("#page4").load("imageManagement.html");
  			});
  			
  			
  			//用户中心
  			
  			//加载权限管理页面
  			$("#news5").click(function(){
  				$("#news5").css("display","inline-block");
  				$("#close5").css("display","");
						$("#page5").load("authortiyManagement.html");
  			});
  			
  			//加载添加用户页面
  			$("#news6").click(function(){
				$("#news6").css("display","inline-block");
				$("#close6").css("display","");
  				$("#page6").load("addUser.html");
  			});
  			
  			//加载删除用户页面
  			$("#news7").click(function(){
				$("#news7").css("display","inline-block");
				$("#close7").css("display","");
  				$("#page7").load("removeUser.html");
  			});
  			//加载查找用户页面
  			$("#news8").click(function(){
				$("#news8").css("display","inline-block");
				$("#close8").css("display","");
  				$("#page8").load("searchUser.html");
  			});
  			
  			//加载更改用户页面
  			$("#news9").click(function(){
				$("#news9").css("display","inline-block");
				$("#close9").css("display","");
  				$("#page9").load("updateUser.html");
  			});


        //加载添加用户页面
        $("#news10").click(function(){
            $("#news10").css("display","inline-block");
            $("#close10").css("display","");
            $("#page10").load("addUser.html");
        });

        //加载删除用户页面
        $("#news11").click(function(){
            $("#news11").css("display","inline-block");
            $("#close11").css("display","");
            $("#page11").load("removeUser.html");
        });
        //加载查找用户页面
        $("#news12").click(function(){
            $("#news12").css("display","inline-block");
            $("#close12").css("display","");
            $("#page12").load("searchUser.html");
        });

        //加载更改用户页面
        $("#news13").click(function(){
            $("#news13").css("display","inline-block");
            $("#close13").css("display","");
            $("#page13").load("updateUser.html");
        });






			
			
			
			//关闭按钮
//			$("#close1").click(function(){
//				$("#news1").css("display","none");
//				$("#close1").css("display","none");
//			});

			$("#close2").click(function(){
				$("#news2").css("display","none");
				$("#close2").css("display","none");
				$("#news1").trigger('click');
			});
  			
			$("#close3").click(function(){
				$("#news3").css("display","none");
				$("#close3").css("display","none");
				$("#news1").trigger('click');
			});
			
			$("#close4").click(function(){
				$("#news4").css("display","none");
				$("#close4").css("display","none");
				$("#news1").trigger('click');
			});
			
			$("#close5").click(function(){
				$("#news5").css("display","none");
				$("#close5").css("display","none");
				$("#news1").trigger('click');
			});
			
			$("#close6").click(function(){
				$("#news6").css("display","none");
				$("#close6").css("display","none");
				$("#news1").trigger('click');
			});
  			
			$("#close7").click(function(){
				$("#news7").css("display","none");
				$("#close7").css("display","none");
				$("#news1").trigger('click');
			});
			
			$("#close8").click(function(){
				$("#news8").css("display","none");
				$("#close8").css("display","none");
				$("#news1").trigger('click');
			});
			
			$("#close9").click(function(){
				$("#news9").css("display","none");
				$("#close9").css("display","none");
				$("#news1").trigger('click');
			});


        $("#close10").click(function(){
            $("#news10").css("display","none");
            $("#close10").css("display","none");
            $("#news1").trigger('click');
        });

        $("#close11").click(function(){
            $("#news11").css("display","none");
            $("#close11").css("display","none");
            $("#news1").trigger('click');
        });

        $("#close12").click(function(){
            $("#news12").css("display","none");
            $("#close12").css("display","none");
            $("#news1").trigger('click');
        });

        $("#close13").click(function(){
            $("#news13").css("display","none");
            $("#close13").css("display","none");
            $("#news1").trigger('click');
        });



    });