$(document).ready(function() {
	$(".use-type2 button").click(function() {
		$(".user").hide(500, function() {
			$(".group").show(500);
		});
	});
});

$(document).ready(function() {
	$(".use-type1 button").click(function() {
		$(".group").hide(500, function() {
			$(".user").show(500);
		});
	});
});

function check(str) 
{ 
var x = document.getElementById(str); 
var y = document.getElementById(str+"Check"); 
//alert("check!"); 
if(str=="Realname") 
{ 
if(x.value=="") 
y.hidden = false; 
else 
y.hidden = true; 
} 
else if(str=="acount") 
{ 
x = x.value.length; 
if(x < 1) 
{ 
y.hidden = false; 
} 
else 
y.hidden = true; 
} 
else if(str=="Sex") 
{ 
if(x.value=="") 
y.hidden = false; 
else 
y.hidden = true; 
} 
else if(str=="Id") 
{ 
x = x.value.length; 
if(x < 18) 
{ 
y.hidden = false; 
//alert("check!"); 
} 
else 
y.hidden = true; 
} 
else if(str=="password") 
{ 
x = x.value.length; 
if(x < 8) 
{ 
y.hidden = false; 
//alert("check!"); 
} 
else 
y.hidden = true; 
} 
else if(str=="cpassword") 
{ 
var z = document.getElementById("password").value; 
x = x.value; 
if(x != z) 
y.hidden = false; 
else 
y.hidden = true; 
} 
else if(str=="Education") 
{ 
if(x.value=="") 
y.hidden = false; 
else 
y.hidden = true; 
} 
else if(str=="Nation") 
{ 
if(x.value=="") 
y.hidden = false; 
else 
y.hidden = true; 
} 
else if(str=="WorkSpace") 
{ 
if(x.value=="") 
y.hidden = false; 
else 
y.hidden = true; 
} 
else if(str=="Political") 
{ 
if(x.value=="") 
y.hidden = false; 
else 
y.hidden = true; 
} 
else if(str=="tel") 
{ 
if(x.value=="") 
y.hidden = false; 
else 
y.hidden = true; 
}
return y.hidden; 
} 

function validate1() 
{ 
var arr=["password","cpassword","Nation","WorkSpace","Political","tel","Education","Id","Sex","Realname"]; 
var i = 0; 
submitOK = true; 
while(i <= 9) 
{ 
if(!check(arr[i])) 
{ 
alert("填写数据有误!"); 
submitOK = false; 
break; 
} 
i++; 
} 
if(submitOK) 
{ 
alert("提交成功！"); 
return true; 
} 
else 
{ 
alert("提交失败"); 
return false; 
} 
} 
