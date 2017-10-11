	var onliner = 0;
	var u = location.search.slice(1);

	$(function() {

		main();
		denglu()
		addevent();

	})

	function main() {
		//分类
		$.ajax({
			type: "post",
			url: "index.php",
			async: true,
			data: {
				"uid": u,
				"name": '1'
			},
			dataType: "json",
			success: function(message) {
				console.log(message)
				for(var i = 0; i < message.length; i++) {
					if(message[i][0] == u) {
						console.log(message[i][1]);
						$("h2:eq(0)").text(message[i][1]);
					}
				}
			}
		});
		//	
		$.ajax({
			type: "post",
			url: "list.php",
			async: true,
			data: {
				"uid": u,
				"name": '1'
			},
			dataType: "json",
			success: function(message) {
				abc(message)
			}

		});
		//	

	}

	function abc(message) {
		console.log(message);
		for(var i = 0; i < message.length; i++) {
			var data = '<li data-val="' + message[i][0] + '"><div class="col-lg-3 col-xs-6 bbb" contenteditable="false">' + message[i][1] + '</div><div class="col-lg-9 col-xs-6 fff" contenteditable="false">' + message[i][2] + '</div></li>'
			$(".app").append(data);

		}
		xiugai();
		shanchu();
		sousuo();
	}

	function addevent() { //事件添加
		$(".fd1").bind("click", add);

		//旋转啊
		xz();

	}

	function add() { //添加一条数据		
		$(".app").empty();
		$.ajax({
			type: "post",
			url: "list.php",
			async: true,
			data: {
				"uid": u,
				"name": 0,
				"attr": "",
				"beizhu": ""
			},
			dataType: "json",
			success: function(message) {
				main();

			},
			error: function() {
				alert("shibai")
			}
		});

	}

	function xiugai() {
		$.each($(".bbb"), function(i, item) {
			$(item).unbind().bind("dblclick", function() {
				$(this).attr("contenteditable", "true").focus();

			})
			$(item).bind("blur", function() {
				$(this).attr("contenteditable", "false");
				var das = $(this).text();
				var da = das.replace(/</g, "&lt;");
				var id = $(this).parent().attr("data-val");
				console.log(id + "" + da)
				$.ajax({
					type: "post",
					url: "list.php",
					async: true,
					dataType: "json",
					data: {
						"name": "2",
						"attrs": da,
						"id": id
					},
					success: function(mes) {
						$('.bc-success').fadeIn(800).animate({
							top: "-10%",
							left: "110%"
						}).fadeOut(2000).css({
							"top": "40%",
							"left": "45%"
						});
					},
					error: function(error) {
						console.log(error);
					}
				});

			})
		});

		$.each($(".fff"), function(i, item) {
			$(item).unbind().bind("dblclick", function() {
				$(this).attr("contenteditable", "true").focus();

			})
			$(item).bind("blur", function() {
				$(this).attr("contenteditable", "false");
				var sd = $(this).text();

				var d = sd.replace(/</g, "&lt;");
				var id = $(this).parent().attr("data-val");
				console.log(id + "" + d)
				$.ajax({
					type: "post",
					url: "list.php",
					async: true,
					dataType: "json",
					data: {
						"name": "6",
						"beizhu": d,
						"id": id
					},
					success: function(mes) {
						$('.bc-success').fadeIn(800).animate({
							top: "-10%",
							left: "110%"
						}).fadeOut(2000).css({
							"top": "40%",
							"left": "45%"
						});
					},
					error: function(error) {
						console.log(error);
					}
				});

			})
		})
		$("#xq1").unbind().bind("click", function() {

			var id = $(".app li[data='1']").attr('data-val'); //id

			var texts = $(".app li[data='1'] .bbb").text();

			$("#tit").text(texts);

		})

		$(".xx:eq(0)").click(function() {

			$("#xq2").hide(100);
		})
		$("#content12").focus(function() {
			$(this).text($(this).html());
		})
		$("#content12").blur(function() {
			var sy = $(this).html();
			var d = sy.replace(/</g, "&lt;");
			var id = $(".app li[data='1']").attr('data-val'); //id
			$.ajax({
				type: "post",
				url: "list.php",
				async: true,
				dataType: "json",
				data: {
					"name": "6",
					"beizhu": d,
					"id": id
				},
				success: function(mes) {
					$('.bc-success').fadeIn(800).animate({
						top: "-10%",
						left: "110%"
					}).fadeOut(2000).css({
						"top": "40%",
						"left": "45%"
					});
					window.location.reload()
				},
				error: function(error) {
					console.log(error);
				}
			});
		})

	}

	function shanchu() {
		$(".app li").unbind().bind("click", function() {
			$(this).find(".bbb,.fff").css("background-color", "rgba(245,235,238,0.8)");
			$(".app li").not(this).find(".bbb,.fff").css("background", "#fff");
			$(this).attr("data", "1");
			$(".app li").not(this).attr("data", "0");

		})
		$("#sc1").unbind().bind("click", function() {

				var sc = confirm("是否要删除!");
				if(sc) {
					var id = $(".app li[data='1']").attr('data-val'); //id

					$.ajax({
						type: "post",
						url: "list.php",
						async: true,
						dataType: "json",
						data: {
							"name": "3",
							"id": id
						},
						success: function(mes) {
							$(".app li[data='1']").remove();
						},
						error: function(mes) {
							alert("请选择删除目标");
						}
					});
				}
			})
			//、、
		$("#xq1").unbind().bind("click", function() {
			if($(".app li[data='1']").size()) {
				$("#xq2").fadeIn();
				var id = $(".app li[data='1']").attr('data-val'); //id

				function IsPC() {
					var userAgentInfo = navigator.userAgent;
					var Agents = ["Android", "iPhone",
						"SymbianOS", "Windows Phone",
						"iPad", "iPod"
					];
					var flag = true;
					for(var v = 0; v < Agents.length; v++) {
						if(userAgentInfo.indexOf(Agents[v]) > 0) {
							flag = false;
							break;
						}
					}
					return flag;
				};
				if(IsPC()) {
					$("#content12").dblclick(function() {
						$(this).attr("contenteditable", "true")
					});
				} else {
					$("#content12").unbind().bind("click", function() {
						$(this).attr("contenteditable", "true").focus();
					})
				}
				var texts = $(".app li[data='1'] .bbb").text();
				var textb = $(".app li[data='1'] .fff").text();
				var textall = textb.replace(/&lt;/g, "<");
				$("#content12").html(textall);
				if(texts == '') {
					$("#tit").text("无标题");
				} else {
					$("#tit").text(texts);
				}
			} else {
				alert("请选择打开目标");
			}

		})
	}

	function sousuo() {
		$("#sea").unbind().bind("keydown", function() {

				var val = $("#sea").val();
				$.ajax({
					type: "post",
					url: "list.php",
					async: true,
					data: {
						"name": "10",
						"attr": val,
						"uid": u
					},
					dataType: "json",
					success: function(message) {
						$(".app").empty();
						abc(message);
					},
					error: function() {
						alert(2)
					}
				});

			})
			//搜索2
			//		$("#sea").focus(function(){
			//			$(document).keydown(function(){
			//			var s=$("#sea").val();
			//			$.ajax({
			//				type:"post",
			//				url:"list.php",
			//				async:false,
			//				data:{"name":"10","attr":s,"uid":u},
			//				dataType:"json",
			//				success:function(message){
			//					$(".app").empty();
			//					abc(message);
			//					
			//				},
			//				error:function(){
			//					alert(2)
			//				}
			//			});
			//			})
			//			
			//		})

	}

	function xz() {
		//错误旋转
		$(".xx").hover(function() {
			$("#xq2").css("overflow", "hidden");
			num = 360 * 2;
			$(this).css({
				'transform': "rotate(" + num + 'deg)',
				'transition': ' transform 2s ease 0s'
			});
		})
		$(".xx").mouseout(function() {
			setTimeout(function() {
				$("#xq2").css("overflow", "auto");
			}, 2000)
			num = 0;
			$(this).css({
				'transform': "rotate(" + 0 + 'deg)',
				'transition': ' transform 2s ease 0s'
			});
		})
	}

	function denglu() {

		var names = $.cookie('name');
		if(names) {
			onliner = 1;

		} else {
			window.location.href = "index.html";
		}

	}
