
	var onliner=0;
	$(function(){
		main();		//初始数据
		evendom();//删除修改添加
		
	})
	
	
	function main(){
	
		var a;
		$.ajax({
			type:"post",
			url:"index.php",
			async:true,
			dataType:"json",
			data:{'name':'1'},
			beforeSend:function(){
				$(".top_top").animate({"width":'75%'},300);
			},
			complete:function(){
				//console.log(4);
				$(".top_top").animate({"width":'100%'},100);
				setTimeout(function(){
					$(".top_top")[0].style.display="none";
				},1000)
			},
			success:function(mes){
				//console.log(mes);
				for(var i=0;i<mes.length;i++){
				var content="<div class='row_hang' data-val='"+mes[i][0]+"'><div class='col-lg-4 col-xs-4 white tag_1' contenteditable=false>"+mes[i][1]+"</div><div class='col-lg-4 col-xs-4 white'>"+mes[i][2]+"</div><div class='col-lg-4 col-xs-4 white'><span class='btn xg glyphicon glyphicon-pencil'></span>|<span class='btn sc glyphicon glyphicon-trash'></span></div><div>";
				$("#contents").append(content);
			}
			evendom();
			tiaozhuan();
			}
		});
		
		
	}
	function appendtag(){
		//添加一行内容
		
				
			var time=new Date();///创建时间
			var times={
				'year':time.getFullYear()+"/",
				'month':time.getMonth()+1+"/",
				'day':time.getDate()+"&nbsp;",
				"hour":time.getHours()+":",
				"fen":time.getMinutes()+":",
				'miao':time.getSeconds()
			};
			var data="";
			$.each(times,function(i,item){
			 data+=item.toString();
			//console.log(data)
			})
			var content="<div class='row_hang'><div class='col-lg-4 col-xs-4 white tag_1' contenteditable='false'><a href='#'>&nbsp;</a></div><div class='col-lg-4 col-xs-4 white'>"+data+"</div><div class='col-lg-4 col-xs-4 white'><span class='btn xg glyphicon glyphicon-pencil'></span>|<span class='btn sc glyphicon glyphicon-trash'></span></div><div>";
			$.ajax({
					type:"post",
					url:"index.php",
					dataType:"json",
					data:{"name":0,"tag":"","time":data},
					success:function(mes){
					$("#contents").empty();
					main();
					//$("#contents").append(content);
					tiaozhuan();
			}})
			
			//创建结束激活保存删除功能
	}
	function del(){
		
		
			var del=confirm("是否删除");
				if(del){
					var index=$(this).parent().parent().attr("data-val");
					$(this).parent().parent().remove();
					$.ajax({
					type:"post",
					url:"index.php",
					dataType:"json",
					data:{"uid":index,"name":"3"},
					success:function(mes){
					}
					})
				}
	}
	function bc(){
				var tags=$(this).text()
					if(tags.indexOf("<")!=-1){
						var tag=tags.replace(/</g,"&lt;");
					}
					else{
						tag=tags;
					}
					var uid=$(this).parent().attr("data-val");
//					alert(uid)
					var bc=confirm("是否保存");
					if(bc){
					
					$(this).attr("contenteditable","false");
					
					$.ajax({
					type:"post",
					url:"index.php",
					async:true,
					dataType:'json',
					data:{"name":'2',"tag":tag,'uid':uid},
					success:function(data){
//						alert(data);
					$('.bc-success').fadeIn(800).animate({top:"-10%",left:"110%"}).fadeOut(2000).css({"top":"40%","left":"46%"});
					},
					error:function(){
//						alert("shibai")
					}
					});
				}
	}
	function evendom(){
				///	修改删除
					denglu()
				if(onliner=='1'){
					$(".sc").unbind().bind("click",del);
					$(".xg").unbind().bind("click",function(){
					var thi=$(this).parent().parent().find(".tag_1").attr("contenteditable","true").focus();
						
					})
					//保存
					$('.tag_1').unbind().bind("blur",bc);
					//添加
					$(".row1 .tag:eq(0)").unbind().click(function(){
						appendtag();
					})
					$(".eee:eq(0)").click(function(){
						
						window.open("help.html","_blank");
					})
				}
		}
	
	function tiaozhuan(){
		$(".tag_1").bind("click",function(){
				var b=$(this).attr("contenteditable");
				if(b=='false'){
					a=$(this).parent().attr("data-val");
					if($(this).text()!=""){
						location.href="list.html?"+a;
					}
				}
		})
	}
	function denglu(){
		
		var names=$.cookie('name');
			if(names){
				onliner=1;
			}
			else{
				$('#myModal').modal('show');
				
				$("#ndenglu").click(function(){
					var pw=$("#password").val();
					koulingyz(pw);
				
				})
				$(document).unbind().bind("keyup",function(evnet){
					var event=event||window.event;
					if(event.keyCode=="13"){
						var pw=$("#password").val();
						
						koulingyz(pw);
					}
				})
			}
		
	}
	function koulingyz(pw){
		$.ajax({
			type:"post",
			url:"index.php",
			dataType:"json",
			data:{"name":'8',"loginer":pw},
			success:function(mes){
				var i=1;
				if(mes.length>=1)
				{
					if(mes[0].loginer==pw)
					{	$("#su").text("登陆成功!"+i+"秒后自动关闭");
						$.cookie("name",pw);
						onliner=1;
						setInterval(function(){
							for(i;i<4;i++){
							
							window.location.reload()
							}
						},1000)
					}
					else{
						alert("口令错误");
						$("#su").text("登陆成功!"+i+"秒后自动关闭");
					}
				}
				else{
					$("#su").html("<span style='color:red'>口令错误!没有权限操作文档</span>");
				}
			},
			error:function(){
				alert("口令错误");
			}
		})
	}
