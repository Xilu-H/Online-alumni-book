<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
    String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
	
	<style type="text/css">
           .style12 {color: #FF6633;font-size: 14px;}
		    td {FONT-SIZE:9pt; LINE-HEIGHT:150%; COLOR: #353535} 
		    body {background-image: url(<%=path %>/img/background.gif);FONT-SIZE:9pt;LINE-HEIGHT:150%;margin: 0px;} 
			a:link {color: #333333; text-decoration: none}
			a:visited {color: #333333; text-decoration: none}
			a:active {color: #333333; text-decoration: none}
			a:hover {color: #ff0000; text-decoration: underline}
			A:unknown LINK {TEXT-DECORATION: none}
			.list_link {FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #8d1c1c; TEXT-DECORATION: none}
			.wenbenkuang {BORDER-RIGHT: #999999 1px solid; BORDER-TOP: #999999 1px solid; FONT-SIZE: 9pt; BORDER-LEFT: #999999 1px solid; COLOR: #333333; BORDER-BOTTOM: #999999 1px solid; FONT-FAMILY: "宋体"}
			.go-wenbenkuang {BORDER-RIGHT: #666666 1px solid; PADDING-RIGHT: 1px; BORDER-TOP: #ffffff 1px solid; PADDING-LEFT: 1px; FONT-SIZE: 9pt; PADDING-BOTTOM: 1px; BORDER-LEFT: #ffffff 1px solid; CURSOR: hand; COLOR: #333333; PADDING-TOP: 1px; BORDER-BOTTOM: #666666 1px solid; FONT-FAMILY: "宋体"; HEIGHT: 19px; BACKGROUND-COLOR: #eeeeee}
			.table-zuoyou {BORDER-RIGHT: #A9A9A9 1px solid; BORDER-LEFT: #A9A9A9 1px solid}
			.table-shangxia {BORDER-TOP: #A9A9A9 1px solid; BORDER-BOTTOM: #A9A9A9 1px solid}
			.table-sxzy {BORDER-TOP: #A9A9A9 1px solid; BORDER-BOTTOM: #A9A9A9 1px solid;#A9A9A9 1px solid; BORDER-LEFT: #A9A9A9 1px solid;BORDER-RIGHT: #A9A9A9 1px solid}
			.table-you {BORDER-RIGHT: #A9A9A9 1px solid}
			.table-zuo {BORDER-LEFT: #A9A9A9 1px solid}
			.table-shang {BORDER-TOP: #A9A9A9 1px solid}
			.table-xia {BORDER-BOTTOM: #A9A9A9 1px solid}
			.table-xu {BORDER-BOTTOM: #A9A9A9 1px dotted}
			.matrix {FONT-SIZE: 12px}
			.matrix A {COLOR: #93393a}
			.matrix_sub {BORDER-RIGHT: #c9c9c9 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: 0px; PADDING-LEFT: 4px; BACKGROUND-IMAGE: url(<%=path %>/img/botton2.gif); PADDING-BOTTOM: 4px; BORDER-LEFT: #c9c9c9 1px solid; COLOR: #000000; PADDING-TOP: 1px; BORDER-BOTTOM: #c9c9c9 1px solid; BACKGROUND-COLOR: #f7f7f7}
			.matrix_header {BORDER-RIGHT: #c9c9c9 1px solid; BORDER-TOP: #c9c9c9 1px solid; PADDING-LEFT: 5px; BACKGROUND-IMAGE: url(<%=path %>/img/botton2.gif); PADDING-BOTTOM: 6px; BORDER-LEFT: #c9c9c9 1px solid; COLOR: #00469e; PADDING-TOP: 6px; BORDER-BOTTOM: #838383 1px solid; BACKGROUND-COLOR: #ffffff}
			.matrix_info {BORDER-RIGHT: #c9c9c9 1px solid; PADDING-RIGHT: 4px; PADDING-LEFT: 4px; PADDING-BOTTOM: 4px; BORDER-LEFT: #c9c9c9 1px solid; PADDING-TOP: 4px; BORDER-BOTTOM: #eae9e9 1px solid; BACKGROUND-COLOR: #f7f7f7}
			.matrix_info_header {BORDER-RIGHT: #c9c9c9 1px solid; PADDING-RIGHT: 4px; BORDER-TOP: #c9c9c9 1px solid; PADDING-LEFT: 4px; PADDING-BOTTOM: 4px; BORDER-LEFT: #c9c9c9 1px solid; PADDING-TOP: 4px; BORDER-BOTTOM: #eae9e9 1px solid; BACKGROUND-COLOR: #ebeaea}
			.matrix_content {COLOR: #353535; BACKGROUND-COLOR: #ffffff}
			.matrix_left {BORDER-LEFT: #c9c9c9 1px solid}
			.error {BORDER-RIGHT: #ff0000 2px solid; BORDER-TOP: #ff0000 2px solid; BORDER-LEFT: #ff0000 2px solid; WIDTH: 95%; BORDER-BOTTOM: #ff0000 2px solid; BACKGROUND-COLOR: #ffdede}
			.error TD {FONT-SIZE: 12px; COLOR: #ff0000}
			.error .title {BACKGROUND-COLOR: #ff9393}
			.error .title TD {FONT-WEIGHT: bold; FONT-SIZE: 12px; COLOR: #ffffff}
			.select {BORDER-TOP: #c4c4c4 1px solid; BORDER-LEFT: #c4c4c4 1px solid}
			.tableBorder {WIDTH: 98%;BACKGROUND-COLOR: #ffffff;border: 1px solid #0066FF;}
			.edfour {BORDER-RIGHT: #000000 1px solid; BORDER-TOP: #000000 1px solid; BORDER-LEFT: #000000 1px solid; BORDER-BOTTOM: #000000 1px solid; BACKGROUND-COLOR: #ffffff}
			.color {FONT-SIZE: 12px; COLOR: #d7fd62; TEXT-DECORATION: none}
			.line {FONT-SIZE: 12px; LINE-HEIGHT: 25px; TEXT-DECORATION: none}
			.unnamed1 {FONT-SIZE: 12px; COLOR: #000000; TEXT-DECORATION: none}
			.unnamed2 {FONT-SIZE: 12px; LINE-HEIGHT: 25px; TEXT-DECORATION: none}
			.da {font-size: 14px;color: #FFFFFF;letter-spacing: 1px;}
      </style>
      
      <script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
	  <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
	  <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
      
      <script type="text/javascript">
            function FillCity(selectedProvince)
            {
                DWRUtil.removeAllOptions("yuanxiaoId");
                opop=0;
                
				var cityNameList = new Array();
				var provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="马鞍山";
				provinceCityMap[1]="安庆";
				provinceCityMap[2]="蚌埠";
				provinceCityMap[3]="毫州";
				provinceCityMap[4]="巢湖";
				provinceCityMap[5]="滁州";
				provinceCityMap[6]="阜阳";
				provinceCityMap[7]="贵池";
				provinceCityMap[8]="淮北";
				provinceCityMap[9]="准化";
				provinceCityMap[10]="淮南";
				provinceCityMap[11]="黄山";
				provinceCityMap[12]="九华山";
				provinceCityMap[13]="六安";
				provinceCityMap[14]="合肥";
				provinceCityMap[15]="宿州";
				provinceCityMap[16]="铜陵";
				provinceCityMap[17]="屯溪";
				provinceCityMap[18]="芜湖";
				provinceCityMap[19]="宣城";
				provinceCityMap[20]="池州";
				provinceCityMap[21]="宿县";
				cityNameList[0]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="北京";
				cityNameList[1]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="重庆";
				cityNameList[2]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="福州";
				provinceCityMap[1]="福安";
				provinceCityMap[2]="龙岩";
				provinceCityMap[3]="南平";
				provinceCityMap[4]="宁德";
				provinceCityMap[5]="莆田";
				provinceCityMap[6]="泉州";
				provinceCityMap[7]="三明";
				provinceCityMap[8]="邵武";
				provinceCityMap[9]="石狮";
				provinceCityMap[10]="永安";
				provinceCityMap[11]="武夷山";
				provinceCityMap[12]="厦门";
				provinceCityMap[13]="漳州";
				cityNameList[3]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="兰州";
				provinceCityMap[1]="白银";
				provinceCityMap[2]="定西";
				provinceCityMap[3]="敦煌";
				provinceCityMap[4]="甘南";
				provinceCityMap[5]="金昌";
				provinceCityMap[6]="酒泉";
				provinceCityMap[7]="临夏";
				provinceCityMap[8]="平凉";
				provinceCityMap[9]="天水";
				provinceCityMap[10]="武威";
				provinceCityMap[11]="西峰";
				provinceCityMap[12]="矿区";
				provinceCityMap[13]="陇南";
				provinceCityMap[14]="庆阳";
				provinceCityMap[15]="嘉峪关";
				provinceCityMap[16]="张掖";
				provinceCityMap[17]="东风";
				provinceCityMap[18]="合作";
				cityNameList[4]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="广州";
				provinceCityMap[1]="潮阳";
				provinceCityMap[2]="潮州";
				provinceCityMap[3]="澄海";
				provinceCityMap[4]="东莞";
				provinceCityMap[5]="佛山";
				provinceCityMap[6]="河源";
				provinceCityMap[7]="惠州";
				provinceCityMap[8]="江门";
				provinceCityMap[9]="揭阳";
				provinceCityMap[10]="开平";
				provinceCityMap[11]="茂名";
				provinceCityMap[12]="梅州";
				provinceCityMap[13]="清远";
				provinceCityMap[14]="汕头";
				provinceCityMap[15]="汕尾";
				provinceCityMap[16]="深圳";
				provinceCityMap[17]="韶关";
				provinceCityMap[18]="顺德";
				provinceCityMap[19]="阳江";
				provinceCityMap[20]="英德";
				provinceCityMap[21]="云浮";
				provinceCityMap[22]="增城";
				provinceCityMap[23]="湛江";
				provinceCityMap[24]="肇庆";
				provinceCityMap[25]="中山";
				provinceCityMap[26]="珠海";
				cityNameList[5]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="南宁";
				provinceCityMap[1]="百色";
				provinceCityMap[2]="北海";
				provinceCityMap[3]="贵港";
				provinceCityMap[4]="桂林";
				provinceCityMap[5]="防城港";
				provinceCityMap[6]="河池";
				provinceCityMap[7]="柳州";
				provinceCityMap[8]="钦州";
				provinceCityMap[9]="梧州";
				provinceCityMap[10]="玉林";
				cityNameList[6]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="贵阳";
				provinceCityMap[1]="安顺";
				provinceCityMap[2]="毕节";
				provinceCityMap[3]="都匀";
				provinceCityMap[4]="凯里";
				provinceCityMap[5]="六盘水";
				provinceCityMap[6]="铜仁";
				provinceCityMap[7]="兴义";
				provinceCityMap[8]="玉屏";
				provinceCityMap[9]="遵义";
				cityNameList[7]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="海口";
				provinceCityMap[1]="儋县";
				provinceCityMap[2]="陵水";
				provinceCityMap[3]="琼海";
				provinceCityMap[4]="三亚";
				provinceCityMap[5]="通什";
				provinceCityMap[6]="万宁";
				cityNameList[8]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="石家庄";
				provinceCityMap[1]="保定";
				provinceCityMap[2]="北戴河";
				provinceCityMap[3]="沧州";
				provinceCityMap[4]="承德";
				provinceCityMap[5]="丰润";
				provinceCityMap[6]="邯郸";
				provinceCityMap[7]="衡水";
				provinceCityMap[8]="廊坊";
				provinceCityMap[9]="南戴河";
				provinceCityMap[10]="秦皇岛";
				provinceCityMap[11]="唐山";
				provinceCityMap[12]="邢台";
				provinceCityMap[13]="新城";
				provinceCityMap[14]="张家口";
				cityNameList[9]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="哈尔滨";
				provinceCityMap[1]="大庆";
				provinceCityMap[2]="大兴安岭";
				provinceCityMap[3]="鹤岗";
				provinceCityMap[4]="黑河";
				provinceCityMap[5]="佳木斯";
				provinceCityMap[6]="鸡西";
				provinceCityMap[7]="牡丹江";
				provinceCityMap[8]="齐齐哈尔";
				provinceCityMap[9]="七台河";
				provinceCityMap[10]="双鸭山";
				provinceCityMap[11]="绥化";
				provinceCityMap[12]="伊春";
				cityNameList[10]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="郑州";
				provinceCityMap[1]="安阳";
				provinceCityMap[2]="鹤壁";
				provinceCityMap[3]="潢川";
				provinceCityMap[4]="焦作";
				provinceCityMap[5]="开封";
				provinceCityMap[6]="漯河";
				provinceCityMap[7]="洛阳";
				provinceCityMap[8]="南阳";
				provinceCityMap[9]="平顶山";
				provinceCityMap[10]="濮阳";
				provinceCityMap[11]="三门峡";
				provinceCityMap[12]="商丘";
				provinceCityMap[13]="新乡";
				provinceCityMap[14]="信阳";
				provinceCityMap[15]="许昌";
				provinceCityMap[16]="周口";
				provinceCityMap[17]="驻马店";
				cityNameList[11]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="武汉";
				provinceCityMap[1]="恩施";
				provinceCityMap[2]="鄂州";
				provinceCityMap[3]="黄冈";
				provinceCityMap[4]="黄石";
				provinceCityMap[5]="荆门";
				provinceCityMap[6]="荆州";
				provinceCityMap[7]="潜江";
				provinceCityMap[8]="十堰";
				provinceCityMap[9]="随州";
				provinceCityMap[10]="武穴";
				provinceCityMap[11]="仙桃";
				provinceCityMap[12]="咸宁";
				provinceCityMap[13]="襄樊";
				provinceCityMap[14]="三峡";
				provinceCityMap[15]="孝感";
				provinceCityMap[16]="宜昌";
				cityNameList[12]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="长沙";
				provinceCityMap[1]="常德";
				provinceCityMap[2]="郴州";
				provinceCityMap[3]="衡阳";
				provinceCityMap[4]="怀化";
				provinceCityMap[5]="湘西";
				provinceCityMap[6]="吉首";
				provinceCityMap[7]="娄底";
				provinceCityMap[8]="邵阳";
				provinceCityMap[9]="湘潭";
				provinceCityMap[10]="益阳";
				provinceCityMap[11]="岳阳";
				provinceCityMap[12]="永州";
				provinceCityMap[13]="张家界";
				provinceCityMap[14]="株洲";
				cityNameList[13]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="南京";
				provinceCityMap[1]="常熟";
				provinceCityMap[2]="常州";
				provinceCityMap[3]="海门";
				provinceCityMap[4]="淮安";
				provinceCityMap[5]="江都";
				provinceCityMap[6]="江阴";
				provinceCityMap[7]="昆山";
				provinceCityMap[8]="连云港";
				provinceCityMap[9]="启东";
				provinceCityMap[10]="沭阳";
				provinceCityMap[11]="太仓";
				provinceCityMap[12]="同里";
				provinceCityMap[13]="南通";
				provinceCityMap[14]="宿迁";
				provinceCityMap[15]="苏州";
				provinceCityMap[16]="泰州";
				provinceCityMap[17]="无锡";
				provinceCityMap[18]="徐州";
				provinceCityMap[19]="盐城";
				provinceCityMap[20]="扬州";
				provinceCityMap[21]="宜兴";
				provinceCityMap[22]="仪征";
				provinceCityMap[23]="胥浦";
				provinceCityMap[24]="淮阴";
				provinceCityMap[25]="镇江";
				provinceCityMap[26]="张家港";
				provinceCityMap[27]="周庄";
				cityNameList[14]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="南昌";
				provinceCityMap[1]="抚州";
				provinceCityMap[2]="赣州";
				provinceCityMap[3]="吉安";
				provinceCityMap[4]="景德镇";
				provinceCityMap[5]="井冈山";
				provinceCityMap[6]="九江";
				provinceCityMap[7]="庐山";
				provinceCityMap[8]="萍乡";
				provinceCityMap[9]="上饶";
				provinceCityMap[10]="新余";
				provinceCityMap[11]="宜春";
				provinceCityMap[12]="鹰潭";
				cityNameList[15]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="长春";
				provinceCityMap[1]="白城";
				provinceCityMap[2]="白山";
				provinceCityMap[3]="珲春";
				provinceCityMap[4]="辽源";
				provinceCityMap[5]="梅河";
				provinceCityMap[6]="吉林";
				provinceCityMap[7]="四平";
				provinceCityMap[8]="松原";
				provinceCityMap[9]="通化";
				provinceCityMap[10]="延边";
				cityNameList[16]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="沈阳";
				provinceCityMap[1]="鞍山";
				provinceCityMap[2]="本溪";
				provinceCityMap[3]="朝阳";
				provinceCityMap[4]="丹东";
				provinceCityMap[5]="抚顺";
				provinceCityMap[6]="阜新";
				provinceCityMap[7]="葫芦岛";
				provinceCityMap[8]="锦州";
				provinceCityMap[9]="辽阳";
				provinceCityMap[10]="大连";
				provinceCityMap[11]="盘锦";
				provinceCityMap[12]="铁岭";
				provinceCityMap[13]="营口";
				cityNameList[17]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="呼和浩特";
				provinceCityMap[1]="包头";
				provinceCityMap[2]="赤峰";
				provinceCityMap[3]="通辽";
				provinceCityMap[4]="满洲里";
				provinceCityMap[5]="乌海";
				provinceCityMap[6]="乌盟";
				provinceCityMap[7]="伊盟";
				provinceCityMap[8]="兴安盟";
				provinceCityMap[9]="呼盟";
				provinceCityMap[10]="哲盟";
				provinceCityMap[11]="巴盟";
				provinceCityMap[12]="锡盟";
				provinceCityMap[13]="阿盟";
				cityNameList[18]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="银川";
				provinceCityMap[1]="固原";
				provinceCityMap[2]="石嘴山";
				provinceCityMap[3]="吴忠";
				cityNameList[19]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="西宁";
				provinceCityMap[1]="德令哈";
				provinceCityMap[2]="格尔木";
				provinceCityMap[3]="共和";
				provinceCityMap[4]="海东";
				provinceCityMap[5]="海晏";
				provinceCityMap[6]="玛沁";
				provinceCityMap[7]="同仁";
				provinceCityMap[8]="玉树";
				cityNameList[20]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="济南";
				provinceCityMap[1]="滨州";
				provinceCityMap[2]="兖州";
				provinceCityMap[3]="德州";
				provinceCityMap[4]="东营";
				provinceCityMap[5]="菏泽";
				provinceCityMap[6]="济宁";
				provinceCityMap[7]="莱芜";
				provinceCityMap[8]="聊城";
				provinceCityMap[9]="蓬莱";
				provinceCityMap[10]="临沂";
				provinceCityMap[11]="日照";
				provinceCityMap[12]="泰安";
				provinceCityMap[13]="潍坊";
				provinceCityMap[14]="威海";
				provinceCityMap[15]="烟台";
				provinceCityMap[16]="青岛";
				provinceCityMap[17]="曲阜";
				provinceCityMap[18]="枣庄";
				provinceCityMap[19]="淄博";
				cityNameList[21]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="上海";
				cityNameList[22]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="太原";
				provinceCityMap[1]="长治";
				provinceCityMap[2]="大同";
				provinceCityMap[3]="候马";
				provinceCityMap[4]="晋城";
				provinceCityMap[5]="离石";
				provinceCityMap[6]="临汾";
				provinceCityMap[7]="宁武";
				provinceCityMap[8]="朔州";
				provinceCityMap[9]="忻州";
				provinceCityMap[10]="阳泉";
				provinceCityMap[11]="榆次";
				provinceCityMap[12]="运城";
				cityNameList[23]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="西安";
				provinceCityMap[1]="安康";
				provinceCityMap[2]="宝鸡";
				provinceCityMap[3]="汉中";
				provinceCityMap[4]="渭南";
				provinceCityMap[5]="商洛";
				provinceCityMap[6]="绥德";
				provinceCityMap[7]="铜川";
				provinceCityMap[8]="咸阳";
				provinceCityMap[9]="延安";
				provinceCityMap[10]="榆林";
				cityNameList[24]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="成都";
				provinceCityMap[1]="巴中";
				provinceCityMap[2]="达州";
				provinceCityMap[3]="德阳";
				provinceCityMap[4]="都江堰";
				provinceCityMap[5]="眉山";
				provinceCityMap[6]="涪陵";
				provinceCityMap[7]="广安";
				provinceCityMap[8]="广元";
				provinceCityMap[9]="九寨沟";
				provinceCityMap[10]="康定";
				provinceCityMap[11]="乐山";
				provinceCityMap[12]="凉山";
				provinceCityMap[13]="泸州";
				provinceCityMap[14]="马尔康";
				provinceCityMap[15]="绵阳";
				provinceCityMap[16]="南充";
				provinceCityMap[17]="内江";
				provinceCityMap[18]="攀枝花";
				provinceCityMap[19]="遂宁";
				provinceCityMap[20]="汶川";
				provinceCityMap[21]="西昌";
				provinceCityMap[22]="雅安";
				provinceCityMap[23]="宜宾";
				provinceCityMap[24]="自贡";
				provinceCityMap[25]="资阳";
				cityNameList[25]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="天津";
				cityNameList[26]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="乌鲁木齐";
				provinceCityMap[1]="阿克苏";
				provinceCityMap[2]="阿勒泰";
				provinceCityMap[3]="阿图什";
				provinceCityMap[4]="博乐";
				provinceCityMap[5]="东山";
				provinceCityMap[6]="哈密";
				provinceCityMap[7]="和田";
				provinceCityMap[8]="喀什";
				provinceCityMap[9]="克拉玛依";
				provinceCityMap[10]="库车";
				provinceCityMap[11]="库尔勒";
				provinceCityMap[12]="奎屯";
				provinceCityMap[13]="石河子";
				provinceCityMap[14]="塔城";
				provinceCityMap[15]="吐鲁番";
				provinceCityMap[16]="伊犁";
				cityNameList[27]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="拉萨";
				provinceCityMap[1]="阿里";
				provinceCityMap[2]="昌都";
				provinceCityMap[3]="林芝";
				provinceCityMap[4]="那曲";
				provinceCityMap[5]="日喀则";
				provinceCityMap[6]="山南";
				cityNameList[28]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="昆明";
				provinceCityMap[1]="保山";
				provinceCityMap[2]="楚雄";
				provinceCityMap[3]="大理";
				provinceCityMap[4]="东川";
				provinceCityMap[5]="个旧";
				provinceCityMap[6]="景洪";
				provinceCityMap[7]="开远";
				provinceCityMap[8]="临沧";
				provinceCityMap[9]="丽江";
				provinceCityMap[10]="六库";
				provinceCityMap[11]="潞西";
				provinceCityMap[12]="曲靖";
				provinceCityMap[13]="思茅";
				provinceCityMap[14]="文山";
				provinceCityMap[15]="版纳";
				provinceCityMap[16]="玉溪";
				provinceCityMap[17]="中甸";
				provinceCityMap[18]="昭通";
				provinceCityMap[19]="德宏";
				provinceCityMap[20]="怒江";
				provinceCityMap[21]="红河";
				cityNameList[29]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="杭州";
				provinceCityMap[1]="安吉";
				provinceCityMap[2]="慈溪";
				provinceCityMap[3]="定海";
				provinceCityMap[4]="奉化";
				provinceCityMap[5]="海盐";
				provinceCityMap[6]="黄岩";
				provinceCityMap[7]="湖州";
				provinceCityMap[8]="嘉兴";
				provinceCityMap[9]="金华";
				provinceCityMap[10]="临安";
				provinceCityMap[11]="临海";
				provinceCityMap[12]="丽水";
				provinceCityMap[13]="宁波";
				provinceCityMap[14]="瓯海";
				provinceCityMap[15]="平湖";
				provinceCityMap[16]="千岛湖";
				provinceCityMap[17]="衢州";
				provinceCityMap[18]="江山";
				provinceCityMap[19]="瑞安";
				provinceCityMap[20]="绍兴";
				provinceCityMap[21]="嵊州";
				provinceCityMap[22]="台州";
				provinceCityMap[23]="温岭";
				provinceCityMap[24]="温州";
				provinceCityMap[25]="舟山";
				cityNameList[30]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="澳门";
				cityNameList[31]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="香港";
				cityNameList[32]=provinceCityMap;
				provinceCityMap=new Array();
				provinceCityMap[0]="台湾";
				cityNameList[33]=provinceCityMap;
				
				var cityDropdown=document.getElementById('chinaCity');
				console.log(cityDropdown);
				index=cityDropdown.options.length;
				
				while (index>0){
				cityDropdown.options[index]=null;
				index--;
				}
				
				var myOption=new Option();
				
				var insertIndex=cityDropdown.options.length;
				
				var i;var flag=false;
				
				if (selectedProvince.options.selectedIndex != 0){
				var cityList = cityNameList[selectedProvince.options.selectedIndex-1];
				for ( i = 0; i < cityList.length; i++){
				myOption=new Option();
				myOption.value=cityList[i];
				myOption.text=cityList[i];
				
				if (myOption.value=="") {
					myOption.selected=true;
				}
				
				cityDropdown.options[i+1]=myOption;
				}
				
				if (flag==false){
				cityDropdown.options[1].selected=true;
				}
				}
		   }

           var opop=0;   
           function yuanxiaoAll()
           {
               
               if(opop==0)
               {
                   document.getElementById("indicator").style.display="block";
                   loginService.yuanxiaoAll(document.ff.chinaCity.value,callback);
                   opop=1;
               }
                  
           }
           function callback(data)
           {
               document.getElementById("indicator").style.display="none";
               DWRUtil.addOptions("yuanxiaoId",data,"id","mingcheng");
           }
           
           
           function cc()
           {
               if(document.ff.yuanxiaoId.value=="")
               {
                   alert("请选择院校");
                   return false;
               }
               if(document.ff.mingcheng.value=="")
               {
                   alert("请输入班级名称");
                   return false;
               }
               
               document.ff.submit();
           }
           
           function a()
           {
               DWRUtil.removeAllOptions("yuanxiaoId");
               opop=0;
           }
      </script>
  </head>
  
  <BODY leftMargin=0 topMargin=0 bgColor=#ffffff>
        <jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
  
		<TABLE border=0 cellSpacing=0 cellPadding=0 width=772 bgColor=#ffffff align=center>
		  <TR>
		    <TD class=b vAlign=top width=772 align=left>
		      <!--<TABLE border=0 cellSpacing=0 cellPadding=0 width=770 align=center bgcolor="#CCCCCC" style="margin-top: 2px;">
		        <TR>
		          <TD height="25">
		               &nbsp;&nbsp;&nbsp;导航菜单
                  </TD>
		        </TR>
		      </TABLE>-->
		      <TABLE border=0 cellSpacing=0 cellPadding=2 width=100% align=left height=133>
		        <TR>
		          <TD height=500 vAlign=top align=left style="padding-top: 10px;padding-left: 10px;padding-right: 10px;">
			          <form action="<%=path %>/banjiAdd.action" name="ff" method="post">
			              <table align="left" border="0" cellpadding="9" cellspacing="9">
								<tr align='center'>
									<td style="width: 60px;" align="left">
										所在省市：										    
									</td>
									<td align="left">
										<select name="chinaProvince" id="chinaProvince" onChange="FillCity(this);" style="width: 200px;">
											<option value="选择">—选择省/直辖市—</option>
											<option value="安徽">安徽</option>
											<option value="北京">北京</option>
											<option value="重庆">重庆</option>
											<option value="福建">福建</option>
											
											<option value="甘肃">甘肃</option>
											<option value="广东">广东</option>
											<option value="广西">广西</option>
											<option value="贵州">贵州</option>
											<option value="海南">海南</option>
											<option value="河北">河北</option>
											<option value="黑龙江">黑龙江</option>
											<option value="河南">河南</option>
											<option value="湖北">湖北</option>
											
											<option value="湖南">湖南</option>
											<option value="江苏">江苏</option>
											<option value="江西">江西</option>
											<option value="吉林">吉林</option>
											<option value="辽宁">辽宁</option>
											<option value="内蒙古">内蒙古</option>
											<option value="宁夏">宁夏</option>
											<option value="青海">青海</option>
											<option value="山东">山东</option>
											
											<option value="上海">上海</option>
											<option value="山西">山西</option>
											<option value="陕西">陕西</option>
											<option value="四川">四川</option>
											<option value="天津">天津</option>
											<option value="新疆">新疆</option>
											<option value="西藏">西藏</option>
											<option value="云南">云南</option>
											<option value="浙江">浙江</option>
											
											<option value="澳门">澳门</option>
											<option value="香港">香港</option>
										</select>
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										所在城市：										    
									</td>
									<td align="left">
										<select name="chinaCity" id="chinaCity" style="width: 200px;" onchange="a()">
											<option value="选择">—选择城市/县—</option>
										</select>
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										院校选择：	<img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>									    
									</td>
									<td align="left">
										<select name="yuanxiaoId" id="yuanxiaoId" onclick="yuanxiaoAll()" style="width: 200px;">
					                     
					                    </select>
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										专业名称：										    
									</td>
									<td align="left">
										<input type="text" name="zhuanye" style="width: 330px;">
									</td>
								</tr>
								<tr align='center'>
									<td style="width: 60px;" align="left">
										班级名称：										    
									</td>
									<td align="left">
										<input type="text" name="mingcheng" style="width: 330px;">
									</td>
								</tr>
								<tr align='center'>
								   <td style="width: 60px;" align="left"></td>
								   <td align="left">
								      <input type="button" value="确定" onclick="cc();"/>
								      <input type="reset" value="重置"/>&nbsp;	
								   </td>
								</tr>
						  </table>
			              </form>
		          </TD>
		        </TR>
		      </TABLE>
		   </TD>
		  </TR>
		</TABLE>


		<TABLE border=0 cellSpacing=0 cellPadding=0 width=772 bgColor=#a9a9a9 align=center>
		  <TR><TD rowSpan=5 width=1></TD></TR>
		</TABLE>
    
    
        <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
  </BODY>
</html>
