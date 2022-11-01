<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>화성시청</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link rel="stylesheet" type="text/css" href="css/front.css">
    <script type="text/javascript" src="js/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="js/jquery-ui.min.js"></script>
    <script type="text/javascript" src="js/swiper.min.js"></script>
    <script type="text/javascript" src="js/front.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b46c489e2a7d3aae1777e299125177fe&libraries=services,clusterer,drawing"></script>

</head>
<body>

<div id="wrap" class="sub1">
    <div class="container">
        <aside>
            <h1><img src="img/common/ico_h1_sub1.svg" alt="도시현황"><strong>도시현황</strong></h1>
            <nav>
                <ul>
                    <li>
                        <a href="#" class="btn-dep1">인구현황</a>
                    </li>
                    <li class="active">
                        <a href="#" class="btn-dep1 flip">공공시설</a>
                        <ul id=menu_option class="dep2" style="display: block">

                        </ul>
                    </li>
                    <li><a href="#" class="btn-dep1">재정현황</a></li>
                    <li><a href="#" class="btn-dep1">주민참여예산</a></li>
                    <li><a href="#" class="btn-dep1">민원맵</a></li>
                    <li><a href="#" class="btn-dep1">일자리현황</a></li>
                    <li><a href="#" class="btn-dep1">물가정보</a></li>
                    <li><a href="#" class="btn-dep1">시정홍보</a></li>
                    <li><a href="#" class="btn-dep1">교류도시</a></li>
                </ul>
            </nav>
            <div class="menu">
                <div class="box dropdown">
                    <a href="#" class="m1 active">시정현황</a>
                    <ul>
                        <li><a href="#">도시현황</a></li>
                        <li><a href="#">주요사업</a></li>
                        <li><a href="#">재난/안전</a></li>
                        <li><a href="#">교통</a></li>
                        <li><a href="#">문화/관광/복지</a></li>
                        <li class="active"><a href="#">시정현황</a></li>
                    </ul>
                </div>
                <div class="box dropdown">
                    <a href="#" class="m2">행정</a>
                    <ul>
                        <li><a href="#">행정</a></li>
                        <li><a href="#">경제</a></li>
                        <li><a href="#">복지</a></li>
                        <li><a href="#">보건</a></li>
                        <li><a href="#">환경</a></li>
                        <li><a href="#">교육/문화/관광</a></li>
                        <li><a href="#">교통안전</a></li>
                        <li><a href="#">재정</a></li>
                    </ul>
                </div>
                <a href="#" class="btn-move"><span class="hidden">메뉴이동</span></a>
            </div>
        </aside>
        <!-- 좌측 메뉴 -->

        <div class="content wrap6">
            <div class="left-box">
                <div class="content-common-box">
                    <h2 class="h2">공공시설</h2>
                    <div class="cont none-bg map-addr-cont">
                        <div class="map-addres">
                            <ul>
                                <li id='lc_1' onclick="local_filter(this)"><a href="javascript:void(0)">봉담읍</a></li>
                                <li id='lc_2' onclick="local_filter(this)"><a href="javascript:void(0)">우정읍</a></li>
                                <li id='lc_3' onclick="local_filter(this)"><a href="javascript:void(0)">향남읍</a></li>
                                <li id='lc_4' onclick="local_filter(this)"><a href="javascript:void(0)">남양읍</a></li>
                                <li id='lc_5' onclick="local_filter(this)"><a href="javascript:void(0)">매송면</a></li>
                                <li id='lc_6' onclick="local_filter(this)"><a href="javascript:void(0)">비봉면</a></li>
                                <li id='lc_7' onclick="local_filter(this)"><a href="javascript:void(0)">마도면</a></li>
                                <li id='lc_8' onclick="local_filter(this)"><a href="javascript:void(0)">송산면</a></li>
                                <li id='lc_9' onclick="local_filter(this)"><a href="javascript:void(0)">서신면</a></li>
                                <li id='lc_10' onclick="local_filter(this)"><a href="javascript:void(0)">팔탄면</a></li>
                                <li id='lc_11' onclick="local_filter(this)"><a href="javascript:void(0)">장안면</a></li>
                                <li id='lc_12' onclick="local_filter(this)"><a href="javascript:void(0)">양감면</a></li>
                                <li id='lc_13' onclick="local_filter(this)"><a href="javascript:void(0)">새솔동</a></li>
                                <li id='lc_14' onclick="local_filter(this)"><a href="javascript:void(0)">정남면</a></li>
                                <li id='lc_15' onclick="local_filter(this)"><a href="javascript:void(0)">진안동</a></li>
                                <li id='lc_16' onclick="local_filter(this)"><a href="javascript:void(0)">병점동</a></li>
                                <li id='lc_17' onclick="local_filter(this)"><a href="javascript:void(0)">반월동</a></li>
                                <li id='lc_18' onclick="local_filter(this)"><a href="javascript:void(0)">기배동</a></li>
                                <li id='lc_19' onclick="local_filter(this)"><a href="javascript:void(0)">화산동</a></li>
                                <li id='lc_20' onclick="local_filter(this)"><a href="javascript:void(0)">동탄1,2동</a></li>
                                <li id='lc_21' onclick="local_filter(this)"><a href="javascript:void(0)">동탄3동</a></li>
                                <li id='lc_22' onclick="local_filter(this)"><a href="javascript:void(0)">동탄4동</a></li>
                                <li id='lc_23' onclick="local_filter(this)"><a href="javascript:void(0)">동탄5동</a></li>
                                <li id='lc_24' onclick="local_filter(this)"><a href="javascript:void(0)">동탄6동</a></li>
                                <li id='lc_25' onclick="local_filter(this)"><a href="javascript:void(0)">동탄7동</a></li>
                                <li id='lc_26' onclick="local_filter(this)"><a href="javascript:void(0)">동탄8동</a></li>
                            </ul>
                        </div>
                        <div class="map-wrap">
                            <div id="map"  style="border:0; width:100%; height:100%;">
                            </div>

                            <div class="marker-box type2 active" style="left: 20%; top:25%; ">
                                <div class="marker"><img src="img/common/marker2.svg" alt=""></div>
                                <div class="tit">화성시어린이문화센터</div>
                            </div>

                            <div class="marker-box type2" style="left: 30%; top:35%; ">
                                <div class="marker"><img src="img/common/marker2.svg" alt=""></div>
                                <div class="tit">화성시어린이문화센터</div>
                            </div>

                            <div class="marker-box type2 " style="left: 40%; top:45%; ">
                                <div class="marker"><img src="img/common/marker2.svg" alt=""></div>
                                <div class="tit">화성시어린이문화센터</div>
                            </div>


                            <div class="map-infomation ">
                                <h4>공공시설</h4>
                                <div class="checklist">
                                    <div>
                                        <label><input type="checkbox" class="checkbox all" value="all" onchange="change_checkBox()" checked><p><em></em><span>전체</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type1" onchange="change_checkBox()" checked><p><em></em><span>공공기관</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type2" onchange="change_checkBox()" checked><p><em></em><span>청사</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type3" onchange="change_checkBox()" checked><p><em></em><span>교육시설</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type4" onchange="change_checkBox()" checked><p><em></em><span>도서관</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type5" onchange="change_checkBox()" checked><p><em></em><span>문화시설</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type6" onchange="change_checkBox()" checked><p><em></em><span>복지시설</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type7" onchange="change_checkBox()" checked><p><em></em><span>대형체육시설</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type8" onchange="change_checkBox()" checked><p><em></em><span>소규모체육시설</span></p></label>
                                        <label><input type="checkbox" class="checkbox " value="type9" onchange="change_checkBox()" checked><p><em></em><span>도시공원</span></p></label>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>
                <!-- // 공통 컨텐츠 박스 -->
            </div>
            <div class="right-box">
                <div class="content-common-box">
                    <h2 class="h2">화성시 복지기관목록</h2>
                    <div class="cont none-bg">
                        <div class="table scroll-y">
                            <table>
                                <colgroup>
                                    <col style="width:21%">
                                    <col style="">
                                    <col style="width:42%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>시설구분</th>
                                    <th>시설명</th>
                                    <th>주소</th>
                                </tr>
                                </thead>
                                <tbody id="dataList">
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <!-- 우측 영역 -->

    </div>
    <div class="navigation">하단 네비게이션 영역</div>
</div>


<script>
    $(function(){
        // 페이지별 script
        $('.checkbox.all').click(function(){
            if($(this).is(':checked')){
                $('.checkbox').prop('checked', true);
            }else{
                $('.checkbox').prop('checked', false);
            }
        })

        $('.checkbox').click(function(){
            var total = $('.checkbox').length;
            var checked = $('.checkbox:checked').length;

            if(total != checked) {
                $('.checkbox.all').prop('checked', false);
            }else{
                $('.checkbox.all').prop('checked', true);
            }
        })
    })

        const areas = []; //행정구역 구분 폴리곤 정보 담을 배열

        let vwiv = ''; //공공기관 주소
        let zof6 = ''; //공공기관 시설명
        let j9pa = ''; //공공기관 행정동
        let id8g = ''; //공공기관 y
        let yh7q = ''; //공공기관 x

        let di8l = ''; //청사 주소
        let wl0i = ''; //청사 시설명
        let xuna = ''; //청사 행정동
        let l0ph = ''; //청사 y
        let sf3r = ''; //청사 x

        let vkkz = ''; //교육시설 주소
        let h1gw = ''; //교육시설 시설명
        let l3c1 = ''; //교육시설 행정동
        let bubu = ''; //교육시설 y
        let els4 = ''; //교육시설 x

        let iwtu = ''; //도서관 주소
        let df9d = ''; //도서관 시설명
        let znt2 = ''; //도서관 행정동
        let qgn0 = ''; //도서관 y
        let y40e = ''; //도서관 x

        let vvz7 = ''; //문화시설 주소
        let va5m = ''; //문화시설 시설명
        let eetw = ''; //문화시설 행정동
        let isvn = ''; //문화시설 y
        let pqqj = ''; //문화시설 x

        let l4tg = ''; //복지시설 주소
        let mf01 = ''; //복지시설 시설명
        let b3wf = ''; //복지시설 행정동
        let gogg = ''; //복지시설 y
        let z0zt = ''; //복지시설 x


        let i7xn = ''; //대형체육시설 주소
        let gl2n = ''; //대형체육시설 시설명
        let gvgf = ''; //대형체육시설 행정동
        let ea4i = ''; //대형체육시설 y
        let mhpx = ''; //대형체육시설 x

        let rpox = ''; //소형체육시설 주소
        let jz3t = ''; //소체육시설 시설명
        let zzwl = ''; //소체육시설 행정동
        let vz4y = ''; //소체육시설 y
        let w19v = ''; //소체육시설 x

        let park_nm = ''; //도식공원 이름

        let trIndex = 0;
        let public_institution_cnt = 0;
        let government_building_cnt = 0;
        let educational_facility_cnt = 0;
        let library_cnt = 0;
        let cultural_facility_cnt = 0;
        let welfare_facility_cnt = 0;
        let large_sports_facility_cnt = 0;
        let small_sports_facility_cnt = 0;
        let park_cnt=0;

        const tbody = document.getElementById('dataList');
        const menu_option = document.getElementById('menu_option');
        let data = "";
        const classNames = document.getElementsByClassName('division');
        const classNames_ = document.getElementsByClassName('data');
        let before_id = ''

        const markers = []; //전체 지도 마커
        const markers_1 = []; //공공기관 마커
        const markers_2 = []; //청사 마커
        const markers_3 = []; //교육시설 마커
        const markers_4 = []; //도서관 마커
        const markers_5 = []; //문화시설 마커
        const markers_6 = []; //복지시설 마커
        const markers_7 = []; //대형체육시설 마커
        const markers_8 = []; //소규모체육시설 마커
        let marker_info = []; //소규모체육시설 마커

    <c:forEach var="excel_data" items="${excel_data}">

    //공공기관
    vwiv = ${excel_data.dataCont}['vwiv'];
    zof6 = ${excel_data.dataCont}['zof6'];
    j9pa = ${excel_data.dataCont}['j9pa'];
    id8g = ${excel_data.dataCont}['id8g'];
    yh7q = ${excel_data.dataCont}['yh7q'];
    //청사현황
    di8l = ${excel_data.dataCont}['di8l'];
    wl0i = ${excel_data.dataCont}['wl0i'];
    xuna = ${excel_data.dataCont}['xuna'];
    l0ph = ${excel_data.dataCont}['l0ph'];
    sf3r = ${excel_data.dataCont}['sf3r'];
    //교육시설
    vkkz = ${excel_data.dataCont}['vkkz'];
    h1gw = ${excel_data.dataCont}['h1gw'];
    l3c1 = ${excel_data.dataCont}['l3c1'];
    bubu = ${excel_data.dataCont}['bubu'];
    els4 = ${excel_data.dataCont}['els4'];
    //도서관
    iwtu = ${excel_data.dataCont}['iwtu'];
    df9d = ${excel_data.dataCont}['df9d'];
    znt2 = ${excel_data.dataCont}['znt2'];
    qgn0 = ${excel_data.dataCont}['qgn0'];
    y40e = ${excel_data.dataCont}['y40e'];
    //문화시설
    vvz7 = ${excel_data.dataCont}['vvz7'];
    va5m = ${excel_data.dataCont}['va5m'];
    eetw = ${excel_data.dataCont}['eetw'];
    isvn = ${excel_data.dataCont}['isvn'];
    pqqj = ${excel_data.dataCont}['pqqj'];
    //복지시설
    l4tg = ${excel_data.dataCont}['l4tg'];
    mf01 = ${excel_data.dataCont}['mf01'];
    b3wf = ${excel_data.dataCont}['b3wf'];
    gogg = ${excel_data.dataCont}['gogg'];
    z0zt = ${excel_data.dataCont}['z0zt'];
    //대규모 체육 시설
    i7xn = ${excel_data.dataCont}['i7xn'];
    gl2n = ${excel_data.dataCont}['gl2n'];
    gvgf = ${excel_data.dataCont}['gvgf'];
    ea4i = ${excel_data.dataCont}['ea4i'];
    mhpx = ${excel_data.dataCont}['mhpx'];
    //소규모 체육시설
    rpox = ${excel_data.dataCont}['rpox'];
    jz3t = ${excel_data.dataCont}['jz3t'];
    zzwl = ${excel_data.dataCont}['zzwl'];
    vz4y = ${excel_data.dataCont}['vz4y'];
    w19v = ${excel_data.dataCont}['w19v'];



    if(vwiv||zof6) {
        data = "<tr class= 'data' id=" + trIndex + ">" +
            "<td class='division'>" + '공공기관' + "</td>" +
            "<td>" + zof6 + "</td>" +
            "<td class='" + j9pa + "'>" + vwiv + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: vwiv, name: zof6, location: j9pa, y_:id8g, x_:yh7q}]
        public_institution_cnt++;
    }
    else if(di8l||wl0i) {
        data = "<tr class= 'data' id=" + trIndex + ">" +
            "<td class='division'>" + '청사' + "</td>" +
            "<td>" + wl0i + "</td>" +
            "<td class='" + xuna + "'>" + di8l + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: di8l, name: wl0i, location: xuna, y_:l0ph, x_:sf3r}]
        government_building_cnt++;
    }
    else if(vkkz||h1gw) {
        data = "<tr class= 'data' id=" + trIndex + ">" +
            "<td class='division'>" + '교육시설' + "</td>" +
            "<td>" + h1gw + "</td>" +
            "<td class='" + l3c1 + "'>" + vkkz + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: vkkz, name: h1gw, location: l3c1, y_:bubu, x_:els4}]
        educational_facility_cnt++;
    }
    else if(iwtu||df9d) {
        data = "<tr class= 'data' id=" + trIndex + ">" +
            "<td class='division'>" + '도서관' + "</td>" +
            "<td>" + df9d + "</td>" +
            "<td class='" + znt2 + "'>" + iwtu + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: iwtu, name: df9d, location: znt2, y_:qgn0, x_:y40e}]
        library_cnt++;
    }
    else if(vvz7||va5m) {
        data = "<tr class= 'data' id=" + trIndex + ">" +
            "<td class='division'>" + '문화시설' + "</td>" +
            "<td>" + va5m + "</td>" +
            "<td class='" + eetw + "'>" + vvz7 + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: vvz7, name: va5m, location: eetw, y_:isvn, x_:pqqj}]
        cultural_facility_cnt++;
    }
    else if(l4tg||mf01) {
        data = "<tr class= 'data' id=" + trIndex + ">" +
            "<td class='division'>" + '복지시설' + "</td>" +
            "<td>" + mf01 + "</td>" +
            "<td class='" + b3wf + "'>" + l4tg + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: l4tg, name: mf01, location: b3wf, y_:gogg, x_:z0zt}]
        welfare_facility_cnt++;
    }
    else if(i7xn||gl2n) {
        data = "<tr class= 'data' id=" + trIndex + ">" +
            "<td class='division'>" + '대형체육시설' + "</td>" +
            "<td>" + gl2n + "</td>" +
            "<td class='" + gvgf  + "'>" + i7xn + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: i7xn, name: gl2n, location: gvgf, y_:ea4i, x_:mhpx}]
        large_sports_facility_cnt++;
    }
    else if(rpox||jz3t) {
        data = "<tr class= data' id=" + trIndex + ">" +
            "<td class='division'>" + '소규모체육시설' + "</td>" +
            "<td>" + rpox + "</td>" +
            "<td class='" + zzwl + "'>" + jz3t + "</td>" +
            "</tr>";
        marker_info = [...marker_info, {address: jz3t, name: rpox, location: zzwl, y_:vz4y, x_:w19v}]
        small_sports_facility_cnt++;
    }
    tbody.insertAdjacentHTML('afterbegin', data);
    trIndex++;
    </c:forEach>

console.log(marker_info);
    <c:forEach var="col_data" items="${col_data}">
    park_nm = "${col_data.PARK_NM}"; //도시공원 이름
    data = "<tr id=" + trIndex + ">" +
        "<td class='division'>" + '도시공원' + "</td>" +
        "<td>" + park_nm + "</td>" +
        "<td>" + '데이터가 없습니다.' + "</td>" +
        "</tr>";
    park_cnt++;
    tbody.insertAdjacentHTML('beforeend', data);
    trIndex++;
    </c:forEach>

    let list = '<li id= "all_items" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">전체시설'+ " (" + trIndex + '개)</a></li>' +
    '<li id= "item_1" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">공공기관' + " (" + public_institution_cnt + '개)</a></li>' +
    '<li id= "item_2" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">청사' + " (" + government_building_cnt + '개)</a></li>' +
    '<li id= "item_3" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">교육시설' + " (" + educational_facility_cnt + '개)</a></li>' +
    '<li id= "item_4" onclick=click_sideBar(this)><a  href="javascript:void(0)" class="btn-dep2">도서관' + " (" + library_cnt + '개)</a></li>' +
    '<li id= "item_5" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">문화시설' + " (" + cultural_facility_cnt + '개)</a></li>' +
    '<li id= "item_6" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">복지시설' + " (" + welfare_facility_cnt + '개)</a></li>' +
    '<li id= "item_7" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">대형체육시설' + " (" + large_sports_facility_cnt + '개)</a></li>' +
    '<li id= "item_8" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">소규모 체육시설' + " (" + small_sports_facility_cnt + '개)</a></li>' +
    '<li id= "item_9" onclick=click_sideBar(this)><a href="javascript:void(0)" class="btn-dep2">도시공원' + " (" + park_cnt + '개)</a></li>';

    menu_option.insertAdjacentHTML('afterbegin', list);

    //json 사용 함수 본문
    function readJSON(file, callback) {
        var rawFile = new XMLHttpRequest();
        rawFile.overrideMimeType("application/json");
        rawFile.open("GET", file, true);
        rawFile.onreadystatechange = function() {
            if (rawFile.readyState === 4 && rawFile.status == "200") {
                callback(rawFile.responseText);
            }
        }
        rawFile.send(null);
    }

    //json 함수 사용법
    readJSON("json/hs_polygon.json", function(text){
        const json_data = JSON.parse(text);
        let path= []; //폴리곤 전체
        let paths= []; //멀티 폴리곤처리 위한 배열
        for ( let a=0; a < json_data.features.length; a++) {

            if(json_data.features[a].geometry.coordinates.length!==1) {

                for (let b=0; b < json_data.features[a].geometry.coordinates.length; b++) {
                    for(let c=0; c<json_data.features[a].geometry.coordinates[b][0].length; c++) {

                        paths.push(new kakao.maps.LatLng(json_data.features[a].geometry.coordinates[b][0][c][1], json_data.features[a].geometry.coordinates[b][0][c][0]));
                    }
                    path.push(paths);
                    paths = [];

                }
            }

            else {
                for(let d=0; d<json_data.features[a].geometry.coordinates[0][0].length; d++) {

                    path=[...path, new kakao.maps.LatLng(json_data.features[a].geometry.coordinates[0][0][d][1], json_data.features[a].geometry.coordinates[0][0][d][0])];

                }
            }
            areas.push({name : json_data.features[a].properties.name, path : [...path], total: json_data.features[a].total, male: json_data.features[a].properties.male, female: json_data.features[a].properties.female, ratio: json_data.features[a].properties.ratio, increase_month: json_data.features[a].properties.increase_month, note: json_data.features[a].properties.note})

            path = []

        }
        // 지도에 영역데이터를 폴리곤으로 표시합니다
        for (let i=0, len=areas.length; i<len; i++) {
            displayArea(areas[i])
        }
    });

    var container = document.getElementById('map');
    var options = {
        center: new kakao.maps.LatLng(37.19956830886976, 126.83149079795464),
        level: 10
    };

    var map = new kakao.maps.Map(container, options);
    customOverlay = new kakao.maps.CustomOverlay({}),
        infowindow = new kakao.maps.InfoWindow({removable: true});

    // 마커 클러스터러를 생성합니다
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
        minLevel: 8 // 클러스터 할 최소 지도 레벨
    });

    // 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
    var mapTypeControl = new kakao.maps.MapTypeControl();

    // 지도에 컨트롤을 추가해야 지도위에 표시됩니다
    // kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
    map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

    // 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
    var zoomControl = new kakao.maps.ZoomControl();
    map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

    function displayArea(area) {

        var polygon = new kakao.maps.Polygon({
            map: map,
            path: area.path, // 그려질 다각형의 좌표 배열입니다
            strokeWeight: 3, // 선의 두께입니다
            strokeColor: '#004c80', // 선의 색깔입니다
            strokeOpacity: 0.8, // 선의 불투명도 입니다 1에서 0 사이의 값이며 0에 가까울수록 투명합니다
            // strokeStyle: 'longdash', // 선의 스타일입니다
            fillColor: '#fff', // 채우기 색깔입니다
            fillOpacity: 0.5 // 채우기 불투명도 입니다
        })

        // 다각형에 mouseover 이벤트를 등록하고 이벤트가 발생하면 폴리곤의 채움색을 변경합니다
        // 지역명을 표시하는 커스텀오버레이를 지도위에 표시합니다
        kakao.maps.event.addListener(polygon, 'mouseover', function(mouseEvent) {
            polygon.setOptions({fillColor: '#09f'});
            customOverlay.setContent('<div class="area">' + area.name + '</div>');
            customOverlay.setPosition(mouseEvent.latLng);
            customOverlay.setMap(map);
        });

        // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름과 면적을 인포윈도우에 표시합니다
        kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
            var Population_info = '<div class="info">' +
                '   <div class="title">' + area.name + '</div>' +
                '   <div class="size">총 인구 : ' + area.total + '</div>' +
                '   <div class="size">남성 : ' + area.male + '</div>' +
                '   <div class="size">여성 : ' + area.female + '</div>' +
                '   <div class="size">남녀 비율 : ' + area.ratio + '</div>' +
                '   <div class="size">전월 대비 인구 증감 : ' + area.increase_month + '</div>' +
                '   <div class="size">비고 : ' + area.note + '</div>' +
                '</div>'

            infowindow.setContent(Population_info);
            infowindow.setPosition(mouseEvent.latLng);
            infowindow.setMap(map);
        });
        // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 다각형의 이름과 면적을 인포윈도우에 표시합니다
        kakao.maps.event.addListener(polygon, 'click', function(mouseEvent) {
            var Population_info = '<div class="info">' +
                '   <div class="title">' + area.name + '</div>' +
                '   <div class="size">총 인구 : ' + area.total + '</div>' +
                '   <div class="size">남성 : ' + area.male + '</div>' +
                '   <div class="size">여성 : ' + area.female + '</div>' +
                '   <div class="size">남녀 비율 : ' + area.ratio + '</div>' +
                '   <div class="size">전월 대비 인구 증감 : ' + area.increase_month + '</div>' +
                '   <div class="size">비고 : ' + area.note + '</div>' +
                '</div>'

            infowindow.setContent(Population_info);
            infowindow.setPosition(mouseEvent.latLng);
            infowindow.setMap(map);
        });

        // 커스텀 오버레이를 지도에서 제거합니다
        kakao.maps.event.addListener(polygon, 'mouseout', function() {
            polygon.setOptions({fillColor: '#fff'});
            customOverlay.setMap(null);
        });

    }
    const click_sideBar = (t) => {

        for(let className of classNames) {
            className.parentElement.style.display='';

            if(t.id ==='item_1'&&className.textContent!=='공공기관') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_2'&&className.textContent!=='청사') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_3'&&className.textContent!=='교육시설') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_4'&&className.textContent!=='도서관') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_5'&&className.textContent!=='문화시설') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_6'&&className.textContent!=='복지시설') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_7'&&className.textContent!=='대형체육시설') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_8'&&className.textContent!=='소규모체육시설') {
                className.parentElement.style.display='none'

            }
            else if(t.id ==='item_9'&&className.textContent!=='도시공원') {
                className.parentElement.style.display='none'

            }
        }

    }
    const change_checkBox = () => {

    }
    const local_filter= (t) => {
        console.log(t.id);
        before_id!==''?document.getElementById(before_id).classList.remove('active'):'';
        for(let className of classNames_) {
            className.style.display='';
           if(className.children[2].className!==t.textContent) {
               className.style.display='none';
           }
        }
        before_id=t.id
        t.className+='active'
    }
</script>

</body>
</html>

