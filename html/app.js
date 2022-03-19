QBScoreboard = {};

$(document).ready(function () {
  window.addEventListener("message", function (event) {
    switch (event.data.action) {
      case "open":
        QBScoreboard.Open(event.data);
        break;
      case "close":
        QBScoreboard.Close();
        break;
    }
  });
});

QBScoreboard.Open = function (data) {
  $(".scoreboard-block").fadeIn(150);

  $('tow').html(data.tow+ ' XP')
  document.getElementById("tow").innerHTML = data.tow+' XP';

  $('hotdogs').html(data.hotdogs+ ' XP')
  document.getElementById("hotdogs").innerHTML = data.hotdogs+' XP';

  $('taxi').html(data.taxi+' XP')
  document.getElementById("taxi").innerHTML = data.taxi+' XP';

  $('truck').html(data.truck+' XP')
  document.getElementById("truck").innerHTML = data.truck+' XP';

  $('dealer').html(data.dealer+' XP')
  document.getElementById("dealer").innerHTML = data.dealer+' XP';

  $('heist').html(data.dealer+' XP')
  document.getElementById("heist").innerHTML = data.heist+' XP';

  $('crafting').html(data.crafting+' XP')
  document.getElementById("crafting").innerHTML = data.crafting+' XP';

  $('attachment').html(data.attachment+' XP')
  document.getElementById("attachment").innerHTML = data.attachment+' XP';

  $('guncraftingrep').html(data.attachment+' XP')
  document.getElementById("guncraftingrep").innerHTML = data.guncraftingrep+' XP';

  $('bulletcraftingrep').html(data.attachment+' XP')
  document.getElementById("bulletcraftingrep").innerHTML = data.bulletcraftingrep+' XP';

};

QBScoreboard.Close = function () {
  $(".scoreboard-block").fadeOut(150);
};
