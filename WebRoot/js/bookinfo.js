//alert($);
document.title="偷影子的人";
//图片轮播
var i = 1;
var mytimer;//对象
function showImg(){
   //获取img元素
   var imgObj =  document.getElementById("img1");
   imgObj.src = "img/"+i+".png";
   i++;
   if(i>6){
     i=1;
   }
   mytimer = setTimeout("showImg()", 2000);
}
function stopShowImg(){
    // 停止timer
 clearTimeout(mytimer);
}
//城市联动
var pro_arry=new Array('bj','sh','tj','cq','hn','hlj');
pro_arry['bj']=['东城区','西城区','崇文区','宣武区','朝阳区','丰台区','石景山区','海淀区','门 头沟区',
                '房山区','通州区','顺义区','昌平区','大兴区','怀柔区','平谷区','密云县','延庆县'];
pro_arry['sh']=['黄浦区','卢湾区','徐汇区','长宁区','静安区','普陀区','闸北区'];
pro_arry['tj']=['和平区','河东区','河西区','南开区','河北区','红桥区'];
pro_arry['cq']=['万州区','涪陵区','渝中区','大渡口'];
pro_arry['hn']=['郑州市','开封市','洛阳市','平顶山市'];
pro_arry['hlj']=['哈尔滨市','齐齐哈尔市','鸡西市','鹤岗市'];
$(function(){
	 $("#myprovice").change(function(){
		 $("#mycity").empty();
	    var pro=$("#myprovice").val();
	    var mycitys=pro_arry[pro];
	    for(var i=0;i<mycitys.length;i++){
	    $("#mycity").append("<option value="+pro_arry[pro][i]+">"+pro_arry[pro][i]+"</option>");
	}
	 });
});
//图片轮播区
   var i=1;
	var mytimer;
	
	function showBook(){
		var book=document.getElementById("bk1");
		book.src="books/"+i+".png";
		//设置li的样式
		 for(index = 1;index<=10;index++){
	          var liobj = document.getElementById("li"+index);
	           if(index==i){
	             liobj.style.backgroundColor = "orange";
	           }else{
	             liobj.style.backgroundColor = "white";
	           }
	         }
	         
		i++;
		if(i>10){
			i=1;
		}
		mytimer=setTimeout("showBook()",1000);
	}
 function stopShow(){
	clearTimeout(mytimer);
 }
 /*评论时间*/
  function write(){
	  alert("d");
  }
	
