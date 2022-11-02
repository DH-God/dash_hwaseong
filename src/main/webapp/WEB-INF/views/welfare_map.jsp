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
                            <div id="map" style="border:0; width:100%; height:100%;">
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
            }
        })

        $('.checkbox').click(function(){
            var total = $('.checkbox').length;
            var checked = $('.checkbox:checked').length;

            if(total !== checked) {
                $('.checkbox.all').prop('checked', false);
            }
            else {
                $('.checkbox.all').prop('checked', true);
            }
        })

    })

    let trIndex = 0; //데이터 로우 번호
    let old_men_cnt = 0; //어르신 데이터 개수
    let integrated_service_cnt = 0; //통합서비스 데이터 개수
    let children_and_youth_cnt = 0; //아동 청소년 데이터 개수
    let women_and_multiculturalism_cnt = 0; //여성 다문화 데이터 개수
    let health_and_medical_facilities = 0; //보건의려시설 데이터 개수
    let disabled_cnt = 0; //장애인 데이터 개수
    const tbody = document.getElementById('tbody');
    const menu_option = document.getElementById('menu_option');
    let crk5, q3rp, ehx4, cqv2, b958, ezv7, kob5 = ''; //데이터 컬럼
    const markers = []; //전체 지도 마커
    const markers_1 = []; //장애인 지도 마커
    const markers_2 = []; //보건의료시설 지도 마커
    const markers_3 = []; //여성 다문화 지도 마커
    const markers_4 = []; //아동 청소년 지도 마커
    const markers_5 = []; //통합서비스 지도 마커
    const markers_6 = []; //어르신 지도 마커
    const crk5_ = []; //구분 컬럼 데이터
    const q3rp_ = []; // 기관명 컬럼 데이터
    const cqv2_ = []; // 주소 컬럼 데이터
    let marker_info = []; // 마커 정보
    let content=''; //마커 클릭시 표시되는 커스텀 오버레이(구분별로 다른 오버레이 표시 위헤)
    let imageSrc = '', // 마커이미지의 주소입니다
        imageSize = new kakao.maps.Size(34, 36) // 마커이미지의 크기입니다
        // imageOption = {offset: new kakao.maps.Point(27, 69)}; // 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
    let clickedOverlay = null; //마커 위에 열려있는 커스텀 오버레이
    const customOverlays = []; // 마커 클릭시 표시되는 커스텀 오버레이
    const classNames = document.getElementsByClassName('crk5'); //
    const checkboxes = document.querySelectorAll('input[type=checkbox]');
    const checkbox_all = document.querySelector('input[type=checkbox][value=all]');
    const checkbox_type1 = document.querySelector('input[type=checkbox][value=type1]');
    const checkbox_type2 = document.querySelector('input[type=checkbox][value=type2]');
    const checkbox_type3 = document.querySelector('input[type=checkbox][value=type3]');
    const checkbox_type4 = document.querySelector('input[type=checkbox][value=type4]');
    const checkbox_type5 = document.querySelector('input[type=checkbox][value=type5]');
    const checkbox_type6 = document.querySelector('input[type=checkbox][value=type6]');
    // const checkbox_type6 = document.querySelectorquerySelector('input[type=checkbox][value=type6]');
    let before_id =''; // 선태 되어있는 데이터
    const areas = []; //행정구역 구분 폴리곤 정보 담을 배열

    // 주소-좌표 변환 객체를 생성합니다
    const geocoder = new kakao.maps.services.Geocoder();
    let x__='';
    let y__='';



    window.onload = () => {

        <c:forEach items="${data}" var="item">
        crk5 = ${item.dataCont}['crk5']; //구분
        q3rp = ${item.dataCont}['q3rp']; //기관명
        ehx4 = ${item.dataCont}['ehx4']; //상세설명
        cqv2 = ${item.dataCont}['cqv2']; //주소
        b958 = ${item.dataCont}['b958']; //연락처
        ezv7 = ${item.dataCont}['ezv7']; //위도
        kob5 = ${item.dataCont}['kob5']; //경도
        // q3rp_.push(q3rp);
        // crk5_.push(crk5);
        // cqv2_.push(cqv2);


        if(!ezv7||!kob5) {

            let crk5__=crk5;
            let q3rp__=q3rp;
            let cqv2__=cqv2;
            geocoder.addressSearch(cqv2, function (result, status) {
                if (status === kakao.maps.services.Status.OK) {
                    x__=result[0].x;
                    y__=result[0].y;
                    console.log(x__);
                    console.log(y__);
                    console.log(crk5__);
                    console.log(q3rp__);
                    console.log(cqv2__);


                } else {
                    console.log('좌표변환실패');
                }

            });
            marker_info = [...marker_info, {ezv7: y__, kob5: x__, crk5: crk5__, q3rp: q3rp__, cqv2: cqv2__}];
        } else {
            marker_info = [...marker_info, {ezv7, kob5, crk5, q3rp, cqv2}];

        }


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

        let list = ("<li id= 'all_items' onclick=click_sideBar(this)><a href='javascript:void(0)' class='btn-dep2'>" + "복지기관" + "(" + trIndex + ")</a></li>"
            + "<li id ='items_1' onclick=click_sideBar(this)><a href='javascript:void(0)' class='btn-dep2'>" + "장애인" + "(" + disabled_cnt + ")</a></li>"
            + "<li id='items_2' onclick=click_sideBar(this)><a href='javascript:void(0)' class='btn-dep2'>" + "보건의료시설" + "(" + health_and_medical_facilities + ")</a></li>"
            + "<li id='items_3' onclick=click_sideBar(this)><a href='javascript:void(0)' class='btn-dep2'>" + "여성/다문화" + "(" + women_and_multiculturalism_cnt + ")</a></li>"
            + "<li id='items_4' onclick=click_sideBar(this)><a href='javascript:void(0)' class='btn-dep2'>" + "아동/청소년" + "(" + children_and_youth_cnt + ")</a></li>"
            + "<li id='items_5' onclick=click_sideBar(this)><a href='javascript:void(0)' class='btn-dep2'>" + "통합서비스" + "(" + integrated_service_cnt + ")</a></li>"
            + "<li id='items_6' onclick=click_sideBar(this)><a href='javascript:void(0)' class='btn-dep2'>" + "어르신" + "(" + old_men_cnt + ")</a></li>");

        menu_option.insertAdjacentHTML('afterbegin', list);



//구분명 별로 다른색 커스텀 오버레이 표시
for(let idx=0; idx < marker_info.length; idx++) {
    const iwContent1 = '<div class="marker-box type1 active" style="left: 20%; top:25%; ">' +
        '<div class="marker"><img src="img/common/marker1.svg" alt="주황색마커"></div>' +
        '<div class="tit">' + marker_info[idx].q3rp + '</div>' +
        '</div>';

    const iwContent2 = '<div class="marker-box type2 active" style="left: 20%; top:25%; ">' +
        '<div class="marker"><img src="img/common/marker2.svg" alt="하늘색마커"></div>' +
        '<div class="tit">' + marker_info[idx].q3rp + '</div>' +
        '</div>';

    const iwContent3 = '<div class="marker-box type3 active" style="left: 20%; top:25%; ">' +
        '<div class="marker"><img src="img/common/marker3.svg" alt="분홍색마커"></div>' +
        '<div class="tit">' + marker_info[idx].q3rp + '</div>' +
        '</div>';

    const iwContent4 = '<div class="marker-box type4 active" style="left: 20%; top:25%; ">' +
        '<div class="marker"><img src="img/common/marker4.svg" alt="초록색마커"></div>' +
        '<div class="tit">' + marker_info[idx].q3rp + '</div>' +
        '</div>'

    const iwContent5 = '<div class="marker-box type5 active" style="left: 20%; top:25%; ">' +
        '<div class="marker"><img src="img/common/marker5.svg" alt="갈색마커"></div>' +
        '<div class="tit">' + marker_info[idx].q3rp + '</div>' +
        '</div>';

    const iwContent6 = '<div class="marker-box type6 active" style="left: 20%; top:25%; ">' +
        '<div class="marker"><img src="img/common/marker6.svg" alt="황토색마커"></div>' +
        '<div class="tit">' + marker_info[idx].q3rp + '</div>' +
        '</div>';

        switch (marker_info[idx].crk5) {
            case '어르신':
                imageSrc='img/common/marker6.svg'
                content = iwContent6;
                break;
            case '통합서비스':
                imageSrc='img/common/marker5.svg'
                content = iwContent5;
                break;
            case '아동 청소년':
                imageSrc='img/common/marker4.svg'
                content = iwContent4;
                break;
            case '여성 다문화':
                imageSrc='img/common/marker3.svg'
                content = iwContent3;
                break;
            case '보건의료시설':
                imageSrc='img/common/marker2.svg'
                content = iwContent2;
                break;
            case '장애인':
                imageSrc='img/common/marker1.svg'
                content = iwContent1;
                break;
        }
            // console.log(marker_info);
            // console.log(idx);
            const coords = new kakao.maps.LatLng(marker_info[idx].ezv7, marker_info[idx].kob5);


        // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
        var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize);

            // 결과값으로 받은 위치를 마커로 표시합니다
            const marker = new kakao.maps.Marker({
                position: coords,
                image: markerImage // 마커이미지 설정
            });


            // 커스텀 오버레이를 생성합니다
            const customOverlay = new kakao.maps.CustomOverlay({
                // map: map,
                position: marker.getPosition(),
                content: content,
                removable: true,
                yAnchor: 1,
            });


            // 마커를 클릭했을 때 커스텀 오버레이를 표시합니다 데이터 선택
            kakao.maps.event.addListener(marker, 'click', function () {
                const customOverlay_name = stringToHTML(customOverlay.cc).children[0].children[1].textContent
                const data_items = document.getElementsByName('data_item');

                if (clickedOverlay) {
                    clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
                }

                //데이터 css 변경 이벤트
                for (let data_item of data_items) {
                    if (customOverlay_name === data_item.children[1].textContent) {
                        data_item.className = 'active';
                        before_id = data_item.id;
                        data_item.scrollIntoView(); //클릭한 데이터로 스크롤 이동
                    } else {
                        data_item.className = '';
                    }
                }
                customOverlay.setMap(map);
                clickedOverlay = customOverlay;
                map.setCenter(marker.getPosition()); //지도 중심 변경

            });

            switch (marker_info[idx].crk5) {
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

            //생성된 커스텀 오베레이를 배열에 넣는다.
            customOverlays.push(customOverlay);
            clusterer.addMarkers(markers);
            console.log(markers);
        }

}




    //사이드 바 클릭 이벤트
    const click_sideBar = (t) => {
        infowindow.close(); //열려있는 인구정보를 닫는다.
        clusterer.clear(); //클러스터를 비운다.
        before_id!==''?document.getElementById(before_id).classList.remove('active'):'';
        for(let className of classNames) {
            className.parentElement.style.display='';
            if(t.id==='items_1' && className.textContent !== '장애인') {
                className.parentElement.style.display='none';
                clusterer.addMarkers(markers_1);
                checkbox_all.checked = false;
                checkbox_type1.checked = true;
                checkbox_type2.checked = false;
                checkbox_type3.checked = false;
                checkbox_type4.checked = false;
                checkbox_type5.checked = false;
                checkbox_type6.checked = false;

            }
            else if(t.id==='items_2' && className.textContent !== '보건의료시설') {
                className.parentElement.style.display='none';
                clusterer.addMarkers(markers_2);
                checkbox_all.checked = false;
                checkbox_type1.checked = false;
                checkbox_type2.checked = true;
                checkbox_type3.checked = false;
                checkbox_type4.checked = false;
                checkbox_type5.checked = false;
                checkbox_type6.checked = false;
            }
            else if(t.id==='items_3' && className.textContent !== '여성 다문화') {
                className.parentElement.style.display='none';
                clusterer.addMarkers(markers_3);
                checkbox_all.checked = false;
                checkbox_type1.checked = false;
                checkbox_type2.checked = false;
                checkbox_type3.checked = true;
                checkbox_type4.checked = false;
                checkbox_type5.checked = false;
                checkbox_type6.checked = false;
            }
            else if(t.id==='items_4' && className.textContent !== '아동 청소년') {
                className.parentElement.style.display='none';
                clusterer.addMarkers(markers_4);
                checkbox_all.checked = false;
                checkbox_type1.checked = false;
                checkbox_type2.checked = false;
                checkbox_type3.checked = false;
                checkbox_type4.checked = true;
                checkbox_type5.checked = false;
                checkbox_type6.checked = false;
            }
            else if(t.id==='items_5' && className.textContent !== '통합서비스') {
                className.parentElement.style.display='none';
                clusterer.addMarkers(markers_5);
                checkbox_all.checked = false;
                checkbox_type1.checked = false;
                checkbox_type2.checked = false;
                checkbox_type3.checked = false;
                checkbox_type4.checked = false;
                checkbox_type5.checked = true;
                checkbox_type6.checked = false;
            }
            else if(t.id==='items_6' && className.textContent !== '어르신') {
                className.parentElement.style.display='none';
                clusterer.addMarkers(markers_6);
                checkbox_all.checked = false;
                checkbox_type1.checked = false;
                checkbox_type2.checked = false;
                checkbox_type3.checked = false;
                checkbox_type4.checked = false;
                checkbox_type5.checked = false;
                checkbox_type6.checked = true;
            }
            else if(t.id==='all_items') {
                checkbox_all.checked = true;
                checkbox_type1.checked = true;
                checkbox_type2.checked = true;
                checkbox_type3.checked = true;
                checkbox_type4.checked = true;
                checkbox_type5.checked = true;
                checkbox_type6.checked = true;
                clusterer.addMarkers(markers);
            }
        }
            if(clickedOverlay) {
                clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
            }
    }

    //String을 HTML로 변경
    const stringToHTML =  (str) => {
        var parser = new DOMParser();
        var doc = parser.parseFromString(str, 'text/html');
        return doc.body;
    };

    //데이터 클릭 이벤트
    const click_data = (t) => {
        let name = document.getElementById(t.id).children[1].textContent;
        let coords = ''
        infowindow.close();
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

                // 마커 클릭시 표시되는 커스텀 오버레이의 텍스트와 데이터의 기관명 비교
                for (let cto of customOverlays) {
                    const cto_name = stringToHTML(cto.cc).children[0].children[1].textContent;

                    //깉으면 해당 마커로 지도 중심 이동, 커스텀 오버레이 표시
                    if (cto_name===name) {
                        if(clickedOverlay) {
                            clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
                        }
                       const mk_info = marker_info.find(info =>
                           info.q3rp===cto_name
                        )

                        coords=new kakao.maps.LatLng(mk_info.ezv7, mk_info.kob5)
                        cto.setMap(map);
                        clickedOverlay = cto;
                        }
                    }
                if(coords.La&&coords.Ma){
                    map.setLevel(5);
                    map.setCenter(coords);
                }
                else(console.log('좌표값오류'))


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

    var map = new kakao.maps.Map(container, options),
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

        // 다각형에 click 이벤트를 등록하고 이벤트가 발생하면 인포윈도우에 표시합니다
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


    //체크박스 이벤트
    const change_checkBox = () => {
        infowindow.close(); //인구정보 열려있으면 닫는다
        clusterer.clear(); //클러스터 비운다
        before_id!==''?document.getElementById(before_id).classList.remove('active'):''; //선택된 데이터가 있으면 선택 헤제한다.
        if(clickedOverlay) {
            clickedOverlay.setMap(null); //이미 열러있는 오베레이가 있으면 닫는다
        }
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

