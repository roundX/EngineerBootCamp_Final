$(function() {
  // 位置情報を取得出来たかどうかフラグ
  let positionGet = true;
  // 位置情報変数
  let latNow;
  let lngNow;
  // 映画館の位置情報をparseして入れる
  let theaterPosition = [];
  // 距離を入れる配列
  let distance = [];
  // 近い順にソートしたシアターの名前、距離、上映時間をまとめる
  let theaterInfo = [];
  // 上映時間表示トグルスイッチ
  let appearance = false;
  // 上映時間表示をした最後にしていたコンテンツの番号を格納
  let contentNumStr;

  // --------------------------------------------------------------
  /***** ユーザーの現在の位置情報を取得 *****/
  function successCallback(position) {
    latNow = position.coords.latitude;
    lngNow = position.coords.longitude;
  }
  /***** 位置情報が取得できない場合 *****/
  function errorCallback(error) {
    let err_msg = "";
    switch (error.code) {
      case 1:
        err_msg = "位置情報の利用が許可されていません";
        break;
      case 2:
        err_msg = "デバイスの位置が判定できません";
        break;
      case 3:
        err_msg = "タイムアウトしました";
        break;
    }
    alert(err_msg);
    positionGet = false;
  }
  // --------------------------------------------------------------

  // 映画館の位置情報をjsonから取得関数--------------------------------------
  function loadTheaterPosition() {
    $.getJSON("theater.json", function(data) {
      theaterPosition = data;
    });
  }
  // --------------------------------------------------------------

  // 現在地と目的地との距離をkmで取得する関数
  function calcDistance() {
    latNow *= Math.PI / 180;
    lngNow *= Math.PI / 180;
    for (let i = 0; i < theaterPosition.length; i++) {
      let nameTea = theaterPosition[i].name;
      let latTea = theaterPosition[i].latTea;
      let lngTea = theaterPosition[i].lngTea;
      let difference;

      latTea *= Math.PI / 180;
      lngTea *= Math.PI / 180;
      difference =
        6371 *
        Math.acos(
          Math.cos(latNow) * Math.cos(latTea) * Math.cos(lngTea - lngNow) +
            Math.sin(latNow) * Math.sin(latTea)
        );
      //   映画館名と現在地からの距離をオブジェクト型で代入
      distance[i] = { name: nameTea, distance: difference };
    }
    // 距離の近い順にソート
    distance.sort(function(a, b) {
      if (a.distance > b.distance) {
        return 1;
      } else {
        return -1;
      }
    });
  }

  // シアターの名前、距離、上映時間を近い順に並べてまとめる
  function alignTheater() {
    for (let j = 0; j < distance.length; j++) {
      for (let k = 0; k < theaterName.length; k++) {
        for (let l = 0; l < theaterName[k].length; l++) {
          if (
            distance[j].name == theaterName[k][l] &&
            theaterTime[k][l] != "null"
          ) {
            theaterInfo.push({
              name: distance[j].name,
              distance: distance[j].distance,
              time: theaterTime[k][l]
            });
          }
        }
      }
    }
    console.log(theaterInfo);
  }

  // sidebar------------------------------------------------------------
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
        navLink.eq(i - 3).addClass("current");

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
  // ------------------------------------------------------------------

  //////////////////////
  // 遅延実行
  //////////////////////
  const wait = (sec) => {
    return new Promise((resolve, reject) => {
      setTimeout(resolve, sec * 1000);
    });
  };

  // 現在地が取得出来ていたら映画館との距離を取得---------------------------
  async function getDistance() {
    if (positionGet === true) {
      try {
        //秒数と、関数を渡す
        await wait(
          5,
          navigator.geolocation.getCurrentPosition(
            successCallback,
            errorCallback
          )
        );
        await wait(1, loadTheaterPosition());
        await wait(1, calcDistance());
        await wait(1, alignTheater());
      } catch (err) {
        console.error(err);
      }
    }
  }
  // -------------------------------------------------------------

  // 実行部分----------------------------------------------------
  // ソート部分を現在の表示のものに選択状態にする
  $("select").val(sort);

  // ページ読み込み時とスクロール時に、現在地をチェックする
  $(window).on("load scroll", function() {
    currentCheck();
  });

  // 上映時間表示---------------------------------------------------------
  $(".content__block").on("click", function(e) {
    if (contentNumStr == e.target.classList[1] && appearance == true) {
      $("." + contentNumStr).css("background-color", "#fff");
      $(".content__theaterInfo:before").remove();
      $(".content__theaterInfo").remove();
      $(".content__theaterInfo-wrapper").remove();
      appearance = false;
    } else if (contentNumStr == e.target.classList[1] || appearance == true) {
      $("." + contentNumStr).css("background-color", "#fff");
      $(".content__theaterInfo:before").remove();
      $(".content__theaterInfo").remove();
      $(".content__theaterInfo-wrapper").remove();
      appearance = false;
      contentNumStr = 0;
    }
    if (contentNumStr != e.target.classList[1]) {
      // 選択された作品が何行目のものか算出、その行の一番右の要素番号を算出する。
      contentNumStr = e.target.classList[1];
      let contentNum = parseInt(contentNumStr);
      let remainder = contentNum % 4;
      let addNum = 4 - remainder;
      let borderContentNum = 0;
      if (addNum != 4) {
        borderContentNum = contentNum + addNum;
      } else {
        borderContentNum = contentNum;
      }

      // 上映場所・時間・距離を表示--------------------------------------------
      let theaterInfoViewTmp = [];
      let theaterInfoView = [];
      // 3は情報の表示数
      for (let i = 0; i < 3; i++) {
        theaterInfoViewTmp.push(
          "<div class='content__theaterInfo-wrapper'><h3 class='content__theaterInfo-name'>" +
            theaterInfo[i].name +
            "<small>(" +
            Math.floor(theaterInfo[i].distance * 10) / 10 +
            "km)</small></h3><h2 class='content__theaterInfo-time'>" +
            theaterInfo[i].time +
            "</h2></div>"
        );
      }
      theaterInfoView.push(
        "<li class='content__theaterInfo'>" + theaterInfoViewTmp + "</li>"
      );
      // g = global match（一致する全要素指定)
      let regExp = /,/g;
      let replaceTheaterInfoView = theaterInfoView[0].replace(regExp, "");
      $("." + borderContentNum).after(replaceTheaterInfoView);

      // 枠線の吹き出しの位置を選択されたコンテンツの箇所によって変更---------------
      let borderPosition;
      switch (remainder) {
        case 0:
          borderPosition = "85%";
          break;
        case 1:
          borderPosition = "8.3%";
          break;
        case 2:
          borderPosition = "34%";
          break;
        case 3:
          borderPosition = "60%";
          break;
      }

      // 選択したコンテンツの背景の色を変更
      $("." + contentNumStr).css("background-color", "#e0edff");
      // 枠線の吹き出しの位置を調整
      $(".content__theaterInfo:before").css("left", borderPosition);

      // 上映時間表示のトグル
      appearance = true;
    }
  });

  // 位置関係実行
  getDistance();
});
