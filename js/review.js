$(function() {
  // ナビゲーションのリンクを指定
  var navLink = $(".sidebar li a");
  if (!navLink[0]) {
    return false;
  }

  // 見出しを配列に格納
  var contentsArr = new Array();
  for (var i = 0; i < navLink.length; i++) {
    // 見出しを取得
    var targetContents = $(navLink.eq(i).attr("href"));
    // 配列に格納
    contentsArr[i] = targetContents;
  }
  //メインコンテンツの次の行の要素を最終位置取得用に追加
  contentsArr[i] = $("div.meta-box");

  // 現在地をチェックする
  function currentCheck() {
    navLink.removeClass("current");
    // 現在のスクロール位置を取得
    var windowScrolltop = $(window).scrollTop() + 180;
    for (var i = 0; i < contentsArr.length - 1; i++) {
      // 現在のスクロール位置が、見出しと次の見出しの間にあるものを調べる
      if (
        contentsArr[i].offset().top <= windowScrolltop &&
        contentsArr[i + 1].offset().top > windowScrolltop
      ) {
        //ナビゲーションにclass="current"をつけてハイライト
        navLink.eq(i - 2).addClass("current");

        //目次のカレントが表示領域から出たら見える位置までスクロール
        var tocList = $(".sidebar>ul.sidebar__list");
        var posTop = navLink.eq(i).position().top;
        if (tocList.innerHeight() < posTop + 190) {
          tocList.scrollTop(
            tocList.scrollTop() - tocList.innerHeight() + posTop + 190
          );
        }
        if (posTop < 190) {
          tocList.scrollTop(tocList.scrollTop() - 190);
        }

        break;
      }
    }
  }

  // ソート部分を現在の表示のものに選択状態にする
  $("select").val(sort);
  // ページ読み込み時とスクロール時に、現在地をチェックする
  $(window).on("load scroll", function() {
    currentCheck();
  });
});
