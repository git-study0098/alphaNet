/**
 * 
 */
$(function(){
      var $lnb = $(".lnb");
      var $contH = $(document).find(".content").height();
      $("#lnb").css({"min-height":$contH});

      $lnb.find(">li >ul").each(function(){
         $(this).parent("li").addClass("low");
      });
      $lnb.find("> li > ul").hide();
      $lnb.find("> li.on > ul").show();
      $lnb.find("> li.on").addClass("active");

      $lnb.find("> li > a").click(function(){
         $lnb.find("> li").removeClass("on");
         if($(this).parent("li").find(">ul").css("display") == "none"){
            $lnb.find("> li").removeClass("on");
            $(this).parent("li").addClass("on");
            $(this).parent("li").find(">ul").slideDown("easeInOutQuart");
            $(this).parent("li").siblings().find(">ul").slideUp("easeInOutQuart");

         } else {
            $(this).parent("li").removeClass("on");
            $(this).parent("li").find(">ul").slideUp("easeInOutQuart");
         }

      });


      $lnb.find(">li").filter(":last").find("a:last").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            lnbReset();
         }
      });

      $lnb.find(">li").filter(":last").find(">a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            if($(this).parent("li").find(">ul").css("display") == "none"){
               lnbReset();
            }
         }
      });

      $lnb.find(">li").filter(":first").find(">a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
            lnbReset();
         } else if (b.keyCode == 9) {}
      });

      function lnbReset(){
         $lnb.find("> li").removeClass("on");
         $lnb.find("> li > ul").hide();
         $lnb.find("> li.active").addClass("on");
         $lnb.find("> li.active ul").show();
      }

      $lnb.find(">li>ul>li>ul>li>a").mouseenter(function(){
         $(this).closest("ul").parent("li").addClass("on");
      });
      /*
      .focusin(function(){
         $(this).mouseenter();
      });
      */

      $lnb.find(">li>ul>li>ul").mouseleave(function(){
         $(this).parent("li").removeClass("on");
      });

      $lnb.find(">li>ul>li>ul>li").filter(":last").find("a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            $(this).closest("ul").parent("li").removeClass("on");
         }
      });
   })