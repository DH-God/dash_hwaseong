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
                        <ul class="dep2" style="display: block">
                            <li><a href="#" class="btn-dep2">복지기관 (100)</a></li>
                            <li><a href="#" class="btn-dep2">장애인 (8)</a></li>
                            <li><a href="#" class="btn-dep2">보건의료시설 (8)</a></li>
                            <li><a href="#" class="btn-dep2">여성/다문화 (8)</a></li>
                            <li><a href="#" class="btn-dep2">아동/청소년 (8)</a></li>
                            <li><a href="#" class="btn-dep2">통합서비스 (8)</a></li>
                            <li><a href="#" class="btn-dep2">어르신 (8)</a></li>
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
                    <h2 class="h2">화성시 축제현황</h2>
                    <div class="cont none-bg">
                        <div class="map-wrap">

                            <!-- 임시지도 -->
                            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12655.01976226366!2d127.13602529008207!3d37.5372736419248!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357cb01f27d2ed49%3A0x482f4a1a1213e5a5!2z7ISc7Jq47Yq567OE7IucIOqwleuPmeq1rCDrqoXsnbzroZw!5e0!3m2!1sko!2skr!4v1662010450137!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

                            <div class="map-infomation">
                                <h4>복지시설</h4>
                                <div class="checklist">
                                    <div>
                                        <label><input type="checkbox" class="checkbox all" checked><p><em></em><span>전체</span></p></label>
                                        <label><input type="checkbox" class="checkbox type1" checked><p><em></em><span>장애인</span></p></label>
                                        <label><input type="checkbox" class="checkbox type2" checked><p><em></em><span>보건의료시설</span></p></label>
                                        <label><input type="checkbox" class="checkbox type3" checked><p><em></em><span>여성/다문화</span></p></label>
                                        <label><input type="checkbox" class="checkbox type4"><p><em></em><span>아동/청소년</span></p></label>
                                        <label><input type="checkbox" class="checkbox type5"><p><em></em><span>통합서비스</span></p></label>
                                        <label><input type="checkbox" class="checkbox type6"><p><em></em><span>어르신</span></p></label>
                                    </div>
                                </div>
                            </div>

                            <div class="marker-box type1 active" style="left: 20%; top:25%; ">
                                <div class="marker"><img src="img/common/marker1.svg" alt="주황색마커"></div>
                                <div class="tit">화성시니어클럽</div>
                            </div>

                            <div class="marker-box type2 active" style="left: 30%; top:35%; ">
                                <div class="marker"><img src="img/common/marker2.svg" alt="주황색마커"></div>
                                <div class="tit">행복이가득한주야간보호센터</div>
                            </div>

                            <div class="marker-box type3 active" style="left: 40%; top:45%; ">
                                <div class="marker"><img src="img/common/marker3.svg" alt="주황색마커"></div>
                                <div class="tit">화성시니어클럽</div>
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
<%--                                <tr>--%>
<%--                                    <td><c:out value="1" /></td>--%>
<%--                                    <td><c:out value="1" /></td>--%>
<%--                                    <td><c:out value="1" /></td>--%>
<%--                                    <td><c:out value="1" /></td>--%>
<%--                                    <td><button onclick="test()">test</button></td>--%>
<%--                                </tr>--%>
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

    window.onload = () => {

        let trIndex = 0;
        let tbody = document.getElementById('tbody');
        let crk5, q3rp, ehx4, cqv2, b958 = '';

        <c:forEach items="${data}" var="item">
        crk5 = ${item.dataCont}['crk5']; //구분
        q3rp = ${item.dataCont}['q3rp']; //기관명
        ehx4 = ${item.dataCont}['ehx4']; //상세설명
        cqv2 = ${item.dataCont}['cqv2']; //주소
        b958 = ${item.dataCont}['b958']; //연락처

            var data = ("<tr id=" + trIndex + ">" +
                "<td>" + crk5 + "</td>" +
                "<td>" + q3rp + "</td>" +
                "<td>" + ehx4 + "</td>" +
                "<td>" + cqv2 + "</td>" +
                "<td>" + b958 + "</td>" +
                "</tr>");

            tbody.insertAdjacentHTML('afterbegin', data);

            trIndex++;

        </c:forEach>
    }

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

            if(total != checked) {
                $('.checkbox.all').prop('checked', false);
            }else{
                $('.checkbox.all').prop('checked', true);
            }
        })

    })
</script>

</body>
</html>

