<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2022-10-05
  Time: 오전 10:15
  To change this template use File | Settings | File Templates.
--%>
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

<div id="wrap" class="sub5">
    <div class="container">
        <aside>
            <h1><img src="img/common/ico_h1_sub5.svg" alt="문화/관광/복지"><strong>문화/관광/복지</strong></h1>
            <nav>
                <ul>
                    <li>
                        <a href="#" class="btn-dep1 flip">축제현황</a>
                        <ul class="dep2">
                            <li><a href="#" class="btn-dep2">전체 (100)</a></li>
                            <li><a href="#" class="btn-dep2">당월 (8)</a></li>
                        </ul>
                    </li>
                    <li class="active">
                        <a href="#" class="btn-dep1 flip">복지맵</a>
                        <ul class="dep2" style="display: block" id="menu_option">

                        </ul>
                    </li>
                    <li>
                        <a href="#" class="btn-dep1 flip">관광지도</a>
                        <ul class="dep2">
                            <li><a href="#" class="btn-dep2">관광시설 (100곳)</a></li>
                            <li><a href="#" class="btn-dep2">자연 (100곳)</a></li>
                            <li><a href="#" class="btn-dep2">역사 (100곳)</a></li>
                            <li><a href="#" class="btn-dep2">문화 (100곳)</a></li>
                        </ul>
                    </li>
                </ul>
            </nav>
            <div class="menu">
                <div class="box dropdown">
                    <a href="#" class="m1 active">시정현황</a>
                    <ul style="display: none">
                        <li><a href="#">도시현황</a></li>
                        <li><a href="#">주요사업</a></li>
                        <li><a href="#">재난/안전</a></li>
                        <li><a href="#">교통</a></li>
                        <li><a href="#">문화/관광/복지</a></li>
                        <li class="active"><a href="#">시정현황</a></li>
                    </ul>
                </div>
                <div class="box dropdown">
                    <a href="#" class="m2">전체</a>
                    <ul style="display: none">
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

        <div class="content wrap3">
            <div class="left-box">

                <div class="content-common-box">
                    <h2 class="h2">화성시 복지맵</h2>
                    <div class="cont none-bg">
                        <div class="map-wrap">
                            <div id="map"  style="border:0; width:100%; height:100%;">
                            </div>
                            <div class="map-infomation">
                                <h4>복지시설</h4>
                                <div class="checklist">
                                    <div>
                                        <label><input type="checkbox" class="checkbox all" value="all" onchange="change_checkBox()" checked><p><em></em><span>전체</span></p></label>
                                        <label><input type="checkbox" class="checkbox type1" value="type1" onchange="change_checkBox()" checked><p><em></em><span>장애인</span></p></label>
                                        <label><input type="checkbox" class="checkbox type2" value="type2" onchange="change_checkBox()" checked><p><em></em><span>보건의료시설</span></p></label>
                                        <label><input type="checkbox" class="checkbox type3" value="type3" onchange="change_checkBox()" checked><p><em></em><span>여성/다문화</span></p></label>
                                        <label><input type="checkbox" class="checkbox type4" value="type4" onchange="change_checkBox()" checked><p><em></em><span>아동/청소년</span></p></label>
                                        <label><input type="checkbox" class="checkbox type5" value="type5" onchange="change_checkBox()" checked><p><em></em><span>통합서비스</span></p></label>
                                        <label><input type="checkbox" class="checkbox type6" value="type6" onchange="change_checkBox()" checked><p><em></em><span>어르신</span></p></label>
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
                    <h2 class="h2">화성소 복지기관목록</h2>
                    <div class="cont none-bg ">
                        <div class="table scroll-y">
                            <table>
                                <colgroup>
                                    <col style="width:14%">
                                    <col style="width:26%">
                                    <col style="width:14%">
                                    <col style="width:31%">
                                    <col style="width:14%">
                                </colgroup>
                                <thead>
                                <tr>
                                    <th>구분</th>
                                    <th>기관명</th>
                                    <th>상세설명</th>
                                    <th>주소</th>
                                    <th>연락처</th>
                                </tr>
                                </thead>
                                <tbody id="tbody">

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
        // 탭
        $('.tab-wrap .tabs a').click(function(){
            $(this).parent().addClass('active').siblings().removeClass('active');
            $('.tab-cont > div').eq($(this).parent().index()).show().siblings().hide();
            return false;
        })

        // 페이지별 script
        var posterSwiper = new Swiper(".poster-view .swiper-container", {
            autoplay: {
                delay: 2500,
                disableOnInteraction: false,
            },
            navigation: {
                nextEl: ".poster-view .swiper-button-next",
                prevEl: ".poster-view .swiper-button-prev",
            },
            on: {
                slideChange: function () {
                    var posterTitle = $('.poster-view .swiper-slide').eq(this.realIndex).find('.tit').text();
                    $('.poster-view .controls .txt').text(posterTitle);

                }
            }
        });

        $('.checkbox.all').click(function(){
            if($(this).is(':checked')){
                $('.checkbox').prop('checked', true);
            }else{
                $('.checkbox').prop('checked', false);

                // clusterer.clear();
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

    let trIndex = 0;
    let old_men_cnt = 0;
    let integrated_service_cnt = 0;
    let children_and_youth_cnt = 0;
    let women_and_multiculturalism_cnt = 0;
    let health_and_medical_facilities = 0;
    let disabled_cnt = 0;
    const tbody = document.getElementById('tbody');
    const menu_option = document.getElementById('menu_option');
    let crk5, q3rp, ehx4, cqv2, b958 = '';
    const markers = [];
    const markers_1 = [];
    const markers_2 = [];
    const markers_3 = [];
    const markers_4 = [];
    const markers_5 = [];
    const markers_6 = [];
    const crk5_ = [];
    const q3rp_ = [];
    const cqv2_ = [];
    let content='';
    let clickedOverlay = null;
    const customOverlays = [];
    const classNames = document.getElementsByClassName('crk5');
    const checkboxes = document.querySelectorAll('input[type=checkbox][checked]');


    window.onload = () => {

        <c:forEach items="${data}" var="item">
        crk5 = ${item.dataCont}['crk5']; //구분
        q3rp = ${item.dataCont}['q3rp']; //기관명
        ehx4 = ${item.dataCont}['ehx4']; //상세설명
        cqv2 = ${item.dataCont}['cqv2']; //주소
        b958 = ${item.dataCont}['b958']; //연락처

        q3rp_.push(q3rp);
        crk5_.push(crk5);
        cqv2_.push(cqv2)

        var data = ("<tr id=" + trIndex + " name='data_item'" + " onclick=click_data(this)" + ">" +
            "<td class='crk5'>" + crk5 + "</td>" +
            "<td>" + q3rp + "</td>" +
            "<td>" + ehx4 + "</td>" +
            "<td>" + cqv2 + "</td>" +
            "<td>" + b958 + "</td>" +
            "</tr>");

        tbody.insertAdjacentHTML('afterbegin', data);

        trIndex++;

        switch(crk5) {
            case '어르신': old_men_cnt ++; break;
            case '통합서비스': integrated_service_cnt ++; break;
            case '아동 청소년': children_and_youth_cnt ++; break;
            case '여성 다문화': women_and_multiculturalism_cnt ++; break;
            case '보건의료시설': health_and_medical_facilities ++; break;
            case '장애인': disabled_cnt ++; break;
        }

        </c:forEach>

        let list = ("<li id= 'all_items' onclick=change_data(this)><a href='javascript:void(0)' class='btn-dep2'>" + "복지기관" + "(" + trIndex + ")</a></li>"
            + "<li id ='items_1' onclick=change_data(this)><a href='javascript:void(0)' class='btn-dep2'>" + "장애인" + "(" + disabled_cnt + ")</a></li>"
            + "<li id='items_2' onclick=change_data(this)><a href='javascript:void(0)' class='btn-dep2'>" + "보건의료시설" + "(" + health_and_medical_facilities + ")</a></li>"
            + "<li id='items_3' onclick=change_data(this)><a href='javascript:void(0)' class='btn-dep2'>" + "여성/다문화" + "(" + women_and_multiculturalism_cnt + ")</a></li>"
            + "<li id='items_4' onclick=change_data(this)><a href='javascript:void(0)' class='btn-dep2'>" + "아동/청소년" + "(" + children_and_youth_cnt + ")</a></li>"
            + "<li id='items_5' onclick=change_data(this)><a href='javascript:void(0)' class='btn-dep2'>" + "통합서비스" + "(" + integrated_service_cnt + ")</a></li>"
            + "<li id='items_6' onclick=change_data(this)><a href='javascript:void(0)' class='btn-dep2'>" + "어르신" + "(" + old_men_cnt + ")</a></li>");

        menu_option.insertAdjacentHTML('afterbegin', list);




for(let idx=0; idx < trIndex; idx++) {

// 주소로 좌표를 검색합니다
    geocoder.addressSearch(cqv2_[idx], function (result, status) {

        const iwContent1 = '<div class="marker-box type1 active" style="left: 20%; top:25%; ">' +
            '<div class="marker"><img src="img/common/marker1.svg" alt="주황색마커"></div>' +
            '<div class="tit">' + q3rp_[idx] + '</div>' +
            '</div>';

        const iwContent2 = '<div class="marker-box type2 active" style="left: 20%; top:25%; ">' +
            '<div class="marker"><img src="img/common/marker2.svg" alt="하늘색마커"></div>' +
            '<div class="tit">' + q3rp_[idx] + '</div>' +
            '</div>';

        const iwContent3 = '<div class="marker-box type3 active" style="left: 20%; top:25%; ">' +
            '<div class="marker"><img src="img/common/marker3.svg" alt="분홍색마커"></div>' +
            '<div class="tit">' + q3rp_[idx] + '</div>' +
            '</div>';

        const iwContent4 = '<div class="marker-box type4 active" style="left: 20%; top:25%; ">' +
            '<div class="marker"><img src="img/common/marker4.svg" alt="초록색마커"></div>' +
            '<div class="tit">' + q3rp_[idx] + '</div>' +
            '</div>'

        const iwContent5 = '<div class="marker-box type5 active" style="left: 20%; top:25%; ">' +
            '<div class="marker"><img src="img/common/marker5.svg" alt="갈색마커"></div>' +
            '<div class="tit">' + q3rp_[idx] + '</div>' +
            '</div>';

        const iwContent6 = '<div class="marker-box type6 active" style="left: 20%; top:25%; ">' +
            '<div class="marker"><img src="img/common/marker6.svg" alt="황토색마커"></div>' +
            '<div class="tit">' + q3rp_[idx] + '</div>' +
            '</div>';

        switch (crk5_[idx]) {
            case '어르신':
                content = iwContent6;
                break;
            case '통합서비스':
                content = iwContent5;
                break;
            case '아동 청소년':
                content = iwContent4;
                break;
            case '여성 다문화':
                content = iwContent3;
                break;
            case '보건의료시설':
                content = iwContent2;
                break;
            case '장애인':
                content = iwContent1;
                break;
        }

        // 정상적으로 검색이 완료됐으면
        if (status === kakao.maps.services.Status.OK) {
            const coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            const marker = new kakao.maps.Marker({
                position: coords
            });


            // 커스텀 오버레이를 생성합니다
            const customOverlay = new kakao.maps.CustomOverlay({
                // map: map,
                position: marker.getPosition(),
                content: content,
                removable: true,
                xAnchor: 1
            });


            // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다 데이터 선택
            kakao.maps.event.addListener(marker, 'click', function () {
                const customOverlay_name = stringToHTML(customOverlay.cc).children[0].children[1].textContent
                const data_items = document.getElementsByName('data_item');

                if(clickedOverlay) {
                    clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
                }

                for(let data_item of data_items) {
                    if(customOverlay_name===data_item.children[1].textContent) {
                        data_item.className='active';
                        data_item.scrollIntoView();
                    }
                    else {
                        data_item.className='';
                    }
                }


                customOverlay.setMap(map);
                clickedOverlay = customOverlay;
                map.setCenter(marker.getPosition());


            });

            switch (crk5_[idx]) {
                case '어르신':
                    markers_6.push(marker);
                    break;
                case '통합서비스':
                    markers_5.push(marker);
                    break;
                case '아동 청소년':
                    markers_4.push(marker);
                    break;
                case '여성 다문화':
                    markers_3.push(marker);
                    break;
                case '보건의료시설':
                    markers_2.push(marker);
                    break;
                case '장애인':
                    markers_1.push(marker);
                    break;
            }

            //생성된 마커를 배열에 넣는다.
            markers.push(marker);
            customOverlays.push(customOverlay);


        }
        else {
            console.log('좌표변환실패')
        }

        clusterer.addMarkers(markers);

    });
    }
    }

    const change_data = (t) => {

            clusterer.clear();

            for(let className of classNames) {
                className.parentElement.style.display='';

                if(t.id==='items_1' && className.textContent !== '장애인') {
                    className.parentElement.style.display='none';
                    clusterer.addMarkers(markers_1);
                }
                else if(t.id==='items_2' && className.textContent !== '보건의료시설') {
                    className.parentElement.style.display='none';
                    clusterer.addMarkers(markers_2);
                }
                else if(t.id==='items_3' && className.textContent !== '여성 다문화') {
                    className.parentElement.style.display='none';
                    clusterer.addMarkers(markers_3);
                }
                else if(t.id==='items_4' && className.textContent !== '아동 청소년') {
                    className.parentElement.style.display='none';
                    clusterer.addMarkers(markers_4);
                }
                else if(t.id==='items_5' && className.textContent !== '통합서비스') {
                    className.parentElement.style.display='none';
                    clusterer.addMarkers(markers_5);
                }
                else if(t.id==='items_6' && className.textContent !== '어르신') {
                    className.parentElement.style.display='none';
                    clusterer.addMarkers(markers_6);
                }
                else if(t.id==='all_items') {
                    clusterer.addMarkers(markers);
                }
        }
            if(clickedOverlay) {
                clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
            }
    }

    const stringToHTML =  (str) => {
        var parser = new DOMParser();
        var doc = parser.parseFromString(str, 'text/html');
        return doc.body;
    };

    let before_id ='';


    const click_data = (t) => {

        let name = document.getElementById(t.id).children[1].textContent;
        let address = document.getElementById(t.id).children[3].textContent;
        if(before_id!==''){
            document.getElementById(before_id).classList.remove("active");
            document.getElementById(t.id).className = "active";
            before_id = t.id;
        } else {
            document.getElementById(t.id).className = "active";
            before_id = t.id;
        }

        if(clickedOverlay) {
            clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
        }

        // 주소로 좌표를 검색합니다 ps. 도로명 주소 사묭할 경우 검색 결과 없을수 있음 지번주소 사용 추천
        geocoder.addressSearch(address, function(result, status) {
            // 정상적으로 검색이 완료됐으면
            if (status === kakao.maps.services.Status.OK) {
                const coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                for (let cto of customOverlays) {
                    const cto_name = stringToHTML(cto.cc).children[0].children[1].textContent;
                    if (cto_name ===name) {
                        if(clickedOverlay) {
                            clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
                        }
                        cto.setMap(map);
                        clickedOverlay = cto;
                        }
                    }
                map.setLevel(1);
                // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                map.setCenter(coords);

                }

            else {console.log('좌표 변환 실패')}
        });

    }

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

    var areas = [];
    //json 함수 사용법
    readJSON("json/hs_polygon.json", function(text){
        const json_data = JSON.parse(text);

        let path= [];
        let paths= [];
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
           areas.push({name : json_data.features[a].properties.name, path : [...path]})

            path = []

        }
        for (let i=0, len=areas.length; i<len; i++) {
            displayArea(areas[i])
        }
    });


    var container = document.getElementById('map');
    var options = {
        center: new kakao.maps.LatLng(37.19956830886976, 126.83149079795464),
        level: 10
    };

    var map = new kakao.maps.Map(container, options),
        customOverlay = new kakao.maps.CustomOverlay({}),
        infowindow = new kakao.maps.InfoWindow({removable: true});



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


        // 커스텀 오버레이를 지도에서 제거합니다
        kakao.maps.event.addListener(polygon, 'mouseout', function() {
            polygon.setOptions({fillColor: '#fff'});
            customOverlay.setMap(null);
        });

    }

    // 마커 클러스터러를 생성합니다
    var clusterer = new kakao.maps.MarkerClusterer({
        map: map, // 마커들을 클러스터로 관리하고 표시할 지도 객체
        averageCenter: true, // 클러스터에 포함된 마커들의 평균 위치를 클러스터 마커 위치로 설정
        minLevel: 8 // 클러스터 할 최소 지도 레벨
    });
    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    const change_checkBox = () => {
        clusterer.clear();
        for (let checkbox of checkboxes) {
            const check_value = checkbox.value;
            for (let className of classNames) {
            if (checkbox.checked) {
                switch(check_value) {
                    case 'type1': clusterer.addMarkers(markers_1); className.textContent==='장애인'?className.parentElement.style.display='':''; break;
                    case 'type2': clusterer.addMarkers(markers_2); className.textContent==='보건의료시설'?className.parentElement.style.display='':''; break;
                    case 'type3': clusterer.addMarkers(markers_3); className.textContent==='여성 다문화'?className.parentElement.style.display='':''; break;
                    case 'type4': clusterer.addMarkers(markers_4); className.textContent==='아동 청소년'?className.parentElement.style.display='':''; break;
                    case 'type5': clusterer.addMarkers(markers_5); className.textContent==='통합서비스'?className.parentElement.style.display='':''; break;
                    case 'type6': clusterer.addMarkers(markers_6); className.textContent==='어르신'?className.parentElement.style.display='':''; break;
                }
                }
            else {
                switch(check_value) {
                    case 'type1': className.textContent==='장애인'?className.parentElement.style.display='none':''; break;
                    case 'type2': className.textContent==='보건의료시설'?className.parentElement.style.display='none':''; break;
                    case 'type3': className.textContent==='여성 다문화'?className.parentElement.style.display='none':''; break;
                    case 'type4': className.textContent==='아동 청소년'?className.parentElement.style.display='none':''; break;
                    case 'type5': className.textContent==='통합서비스'?className.parentElement.style.display='none':''; break;
                    case 'type6': className.textContent==='어르신'?className.parentElement.style.display='none':''; break;
                }
            }
            }

        }
    }

</script>

</body>
</html>

