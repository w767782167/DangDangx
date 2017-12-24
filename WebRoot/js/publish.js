$(function(){
	
	$("#bookno").focus(function(){
		$("#prop").css("visibility","hidden");
	});
	
});
function CheckDay(){
     
    var   YearNo,MonthNo,DayNo;   
    YearNo   =   document.d_reg_form.year.value;   
    MonthNo   =   document.d_reg_form.month.value;   
 
    var   i,j,DayCount;   
     
    if(MonthNo==1 || MonthNo==3 || MonthNo==5 || MonthNo==7 || MonthNo==8 || MonthNo==10 || MonthNo==12)   
    {DayCount = 31;}   
     
    if(MonthNo==4 || MonthNo==6 || MonthNo==9 || MonthNo==11 )
    {DayCount = 30;}   
     
    if(MonthNo==2){   
           if(IsRunY(YearNo)){
               DayCount = 29;
           }else{
               DayCount = 28;
           }   
    }   
     
    document.d_reg_form.day.length=DayCount;   
    for (i=0;i<=DayCount-1;i++)   
    {   
       document.d_reg_form.day[i]=new Option(i+1);     
       document.d_reg_form.day[i].value=i+1;     
    }   
}
 
function IsRunY(YearNo)   
{   
    // 能被4整除却不能被100整除 或能被400整除的年份
    // 则是闰年
    if ((YearNo % 4 == 0 && YearNo % 100 != 0) || YearNo % 400 == 0){
        return true;
    }else{
        return false;
    }
 
}
CheckDay();

function viewImage(file) {
	var preview = document.getElementById('preview');
	if (file.files && file.files[0]) {
		//火狐下
		preview.style.display = "block";
		preview.style.width = "121px";
		preview.style.height = "121px";
		preview.src = window.URL.createObjectURL(file.files[0]);
		console.debug(preview.src);
	} else {
		//ie下，使用滤镜
		file.select();
		var imgSrc = document.selection.createRange().text;
		var localImagId = document.getElementById("localImag");
		//必须设置初始大小 
		localImagId.style.width = "121px";
		localImagId.style.height ="121px";
		try {
			localImagId.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(sizingMethod=scale)";
			locem("DXImageTransform.Microsoft.AlphaImageLoader").src = imgSrc;
		} catch (e) {
			alert("您上传的图片格式不正确，请重新选择!");
			return false;
		}
		preview.style.display = 'none';
		document.selection.empty();
	}
	return true;
}