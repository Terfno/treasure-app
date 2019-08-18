<!DOCTYPE html>
<html>

  <head>
    <title>Fresheat</title>
    <link
      href="https://fonts.googleapis.com/css?family=Josefin+Sans:100|Oswald|Quicksand:300|Roboto:100,300&display=swap"
      rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Kosugi&display=swap&subset=japanese" rel="stylesheet">
    <style>
      :root {
        --deepblue: #0e1a39;
        --blue: #325ab6;
        --lightblue: #82dbc5;
        --gradient_b: linear-gradient(120deg, var(--lightblue), var(--blue), var(--deepblue));
        --yellow: #f4e848;
        --black: #343434;
        --white: #fbfbfb;
      }

      .intermedius {
        padding-left: 20px;
        padding-right: 20px;
        padding-top: 2px;
        padding-bottom: 2px;
        height: 10vh;
        width: 100vw;
        background-color: var(--white);
        color: var(--black);
        font-family: 'Josefin Sans', sans-serif;
        font-weight: 100;
        display: table-cell;
        vertical-align: middle;
        margin: auto, 10vw, auto;
        font-size: 35pt;
        margin: 0%;
      }

      .mid {
        padding-top: 2px;
        padding-bottom: 2px;
        background: var(--gradient_b);
        height: 80vh;
        width: 100vw;
        font-size: 16pt;
      }

      .seatlist {
        color: var(--white);
        clear: both;
      }

      .seat {
        float: left;
        margin: 10px;
      }

      .r1,
      .r2,
      .r3 {
        clear: both;
      }

      .c1,
      .c2,
      .c3,
      .c4,
      .c5 {
        float: left;
        margin: 10px;
      }

      .foot {
        position: relative;
        height: 10vh;
        widows: 100vw;
        font-weight: 100;
      }

      .copyright {
        color: var(--yellow);
        position: absolute;
        bottom: 0%;
        width: 100%;
        text-align: center;
        font-family: 'Quicksand', sans-serif;
      }

      .generate {
        clear: both;
        padding-left: 30px;
        padding-right: 30px;
        padding-top: 50px;
        padding-bottom: 50px;
        color: var(--white);
        font-weight: 100;
        font-family: 'Quicksand', sans-serif;
      }

    </style>
  </head>

  <body>
    <div class="intermedius">
      INTER MEDIUS
    </div>
    <div class="mid">
      <div class="foot">
        <p class="copyright">__________SCREEN__________SCREEN__________</p>
      </div>
      <div class="seatlist">
        <div class="c1">
          <div class="r1">
            <div class="seat">{{.data_1_1_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_1_1_2}}</div>
          </div>
          <div class="r2">
            <div class="seat">{{.data_1_2_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_1_2_2}}</div>
          </div>
          <div class="r3">
            <div class="seat">{{.data_1_3_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_1_3_2}}</div>
          </div>
        </div>
        <div class="c2">
          <div class="r1">
            <div class="seat">{{.data_2_1_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_2_1_2}}</div>
          </div>
          <div class="r2">
            <div class="seat">{{.data_2_2_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_2_2_2}}</div>
          </div>
          <div class="r3">
            <div class="seat">{{.data_2_3_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_2_3_2}}</div>
          </div>
        </div>
        <div class="c3">
          <div class="r1">
            <div class="seat">{{.data_3_1_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_3_1_2}}</div>
          </div>
          <div class="r2">
            <div class="seat">{{.data_3_2_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_3_2_2}}</div>
          </div>
          <div class="r3">
            <div class="seat">{{.data_3_3_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_3_3_2}}</div>
          </div>
        </div>
        <div class="c4">
          <div class="r1">
            <div class="seat">{{.data_4_1_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_4_1_2}}</div>
          </div>
          <div class="r2">
            <div class="seat">{{.data_4_2_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_4_2_2}}</div>
          </div>
          <div class="r3">
            <div class="seat">{{.data_4_3_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_4_3_2}}</div>
          </div>
        </div>
        <div class="c5">
          <div class="r1">
            <div class="seat">{{.data_5_1_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_5_1_2}}</div>
          </div>
          <div class="r2">
            <div class="seat">{{.data_5_2_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_5_2_2}}</div>
          </div>
          <div class="r3">
            <div class="seat">{{.data_5_3_1}}</div>
            <div class="seat">/</div>
            <div class="seat">{{.data_5_3_2}}</div>
          </div>
        </div>
      </div>
      <div class="generate">
        <h2><a href="./" style="color:var(--white)"> back to home > </a></h2>
      </div>
    </div>
  </body>

</html>
