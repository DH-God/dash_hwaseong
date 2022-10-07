// Modal
! function(t) {
    var n = {
            show: !0,
            backdrop: !0,
            backdropClick: 0,
            keyboard: !0,
            autoPosition: !0,
            dialogMarginTop: 20,
            width: null,
            top: null,
            left: null
        },
        o = {
            BACKDROP: "modal-backdrop",
            OPEN: "modal-open",
            FADE: "fade",
            IN: "in"
        },
        i = {
            MODAL: ".modal",
            DIALOG: ".modal-dialog",
            CONTENT: ".modal-content",
            DATA_TOGGLE: '[data-toggle="modal"]',
            DATA_DISMISS: '[data-dismiss="modal"]'
        };
    t.fn.modal = function(e) {
        function s() {
            var n = t(window).height(),
                o = r.find(i.DIALOG).height(),
                e = n / 2 - o / 2;
            e < g.settings.dialogMarginTop && (e = g.settings.dialogMarginTop), g.settings.top && (e = g.settings.top), t(i.DIALOG).css({
                marginTop: e
            })
        }

        function a() {
            t(document).off("focusin").on("focusin", function(n) {
                f === n.target || t(f).has(n.target).length || f.focus()
            })
        }

        function d() {
            t(document).find("." + o.BACKDROP).length || t(h).appendTo(document.body)
        }

        function c() {
            t("." + o.BACKDROP).remove(), h = null
        }

        function u() {
            //t(document.body).addClass(o.OPEN), 
			
			d(), r.show(), g.settings.width && t(i.DIALOG).css({
                width: g.settings.width,
                marginLeft: "auto",
                marginRight: "auto"
            }), t(i.DIALOG).css({
                marginLeft: g.settings.left
            }), g.settings.autoPosition && s(), a(), r.focus()
        }

        function l() {
            t(document.body).removeClass(o.OPEN), c(), r.hide(), t(i.DIALOG).css("margin-top", ""), t(document).off("focusin")
			
        }
        if (0 === this.length) return this;
        if (this.length > 1) return this.each(function() {
            t(this).modal(e)
        }), this;
        var g = {},
            r = this,
            f = r[0],
            h = null,
            m = function() {
                g.settings = t.extend({}, n, e), r.attr("tabindex", "-1"), g.settings.backdrop ? (h = document.createElement("div"), h.className = o.BACKDROP) : h = null, r.on("click", function(t) {
                    t.target === t.currentTarget && g.settings.backdrop && g.settings.backdropClick && l()
                }), g.settings.keyboard && t(document.body).on("keydown", function(t) {
                    27 === t.which && l()
                })
            };
        return m(), g.settings.show ? u() : l(), t(window).bind("resize", function() {
            s()
        }), this
    }, t(document).on("click", i.DATA_TOGGLE, function(n) {
        var o = t(this).attr("data-target");
        "A" === this.tagName && n.preventDefault(), t(o).modal();
    }), t(document).on("click", i.DATA_DISMISS, function() {
		$(this).closest('.modal').modal({
            show: !1
        })
        /*
		t(i.MODAL).modal({
            show: !1
        })
		*/
		return false;
    })
}(jQuery);


$(function(){
	// init	
	// 좌측 하단 메뉴 영역
	$('.dropdown').each(function(){
		var $this = $(this);
		$this.click(function(){
			if(!$this.hasClass("active")){
				$(".dropdown").removeClass("active");
				$(".dropdown ul").slideUp(100);
				$this.addClass("active");
				$this.find("ul").show();
			}else{
				$this.removeClass("active");
				$this.find("ul").hide();
			}			
		});
	});

	// 문서 클릭시 셀렉트박스 닫힘
	$(document).click(function(e){
		if(!$(event.target).closest(".dropdown").length){
			$(".dropdown").removeClass("active")
			$(".dropdown ul").hide();
		};		
	});
	
	// 좌측 메뉴 2뎁스 기능
	$('aside .btn-dep1.flip').click(function(e){
		if($(this).parent().hasClass('active')){
			$(this).parent().removeClass('active');
			$(this).siblings('.dep2').stop().slideUp(300);
		}else { 
			$(this).parent().addClass('active').siblings().removeClass('active')
			$(this).parent().siblings().children('.dep2').stop().slideUp(300)
			$(this).siblings('.dep2').stop().slideDown(300);
		}
		
	});
	
	// 축제현황 레이어 팝업
	
	// 축제현황 레이어 팝업
	
	$('.tab-wrap .tab-cont ul li a').click(function(){
		if($(this).hasClass('active')){
			$(this).removeClass('active');
		}else{
			console.log($(this).parent().siblings().find('a'));
			$(this).parent().siblings().find('a').removeClass('active');
			$(this).addClass('active');
		}
		return false;
	});
	
	

	/*
	$('.tab-wrap .tab-cont ul li a').each(function(){
		var $this = $(this);
		$this.click(function(){
			if(!$this.hasClass("active")){
				$(".tab-wrap .tab-cont ul li a").removeClass("active");
				$(".info-layer").hide();
				$this.addClass("active");
				$(".info-layer").show();
			}else{
				$this.removeClass("active");
				$(".info-layer").hide();
			}			
		});
	});
	*/
	
	
	
	
});
