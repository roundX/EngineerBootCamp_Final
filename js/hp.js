// カウント用変数
let countNow = -1;
let countComing = -1;
let countReview = -1;
let countRental = -1;
let countTrend = -1;
slideshow();

// 画像切り替え関数
function slideshow() {
  //画像番号
  countNow++;
  countComing++;
  countReview++;
  countRental++;
  countTrend++;

  //画像の枚数確認
  if (countNow == nowJacket.length) {
    countNow = 0;
  }
  if (countComing == comingJacket.length) {
    countComing = 0;
  }
  if (countReview == reviewJacket.length) {
    countReview = 0;
  }
  if (countRental == rentalJacket.length) {
    countRental = 0;
  }
  if (countTrend == rentalJacket.length) {
    countTrend = 0;
  }

  // 画像更新
  $(".nowJacket").attr("src", nowJacket[countNow]);
  $(".comingJacket").attr("src", comingJacket[countComing]);
  $(".reviewJacket").attr("src", reviewJacket[countReview]);
  $(".rentalJacket").attr("src", rentalJacket[countRental]);
  $(".trendJacket").attr("src", trendJacket[countTrend]);

  //3秒毎に画像切り替え（imgTimer関数実行）
  setTimeout("slideshow()", 3000);
}
