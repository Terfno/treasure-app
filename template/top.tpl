<!DOCTYPE html>
<html>

  <head>
    <title>Fresheat</title>
    <link
      href="https://fonts.googleapis.com/css?family=Josefin+Sans:100|Oswald|Quicksand:300|Roboto:100,300&display=swap"
      rel="stylesheet">
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

      body {
        overflow: hidden;
        margin: 0%;
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
      }

      .service {
        padding-left: 20px;
        padding-right: 20px;
        padding-top: 30px;
        padding-bottom: 30px;
        color: var(--white);
        font-family: 'Oswald', sans-serif;
      }

      .concept {
        padding-left: 20px;
        padding-right: 20px;
        padding-top: 2px;
        padding-bottom: 20px;
        color: var(--white);
        font-family: 'Roboto', sans-serif;
        font-weight: 300;
      }

      .message {
        padding-left: 20px;
        padding-right: 20px;
        padding-top: 2px;
        padding-bottom: 2px;
        color: var(--white);
        font-family: 'Roboto', sans-serif;
        font-weight: 100;
      }

      .generate {
        padding-left: 30px;
        padding-right: 30px;
        padding-top: 50px;
        padding-bottom: 50px;
        color: var(--white);
        font-weight: 100;
        font-family: 'Quicksand', sans-serif;
      }

      .foot {
        position: relative;
        height: 10vh;
        widows: 100vw;
        font-weight: 100;
      }

      .copyright {
        position: absolute;
        bottom: 0%;
        width: 100%;
        text-align: center;
        font-family: 'Quicksand', sans-serif;
      }

      h1 {
        font-size: 35pt;
        margin: 0%;
      }

      h2 {
        font-size: 23pt;
        margin: 0%;
      }

      h3 {
        font-size: 20pt;
      }

      p {
        font-size: 13pt;
        margin: 0%;
      }

    </style>
  </head>

  <body>
    <div>
      <div class="intermedius">
        INTER MEDIUS
      </div>
    </div>
    <div class="mid">
      <div class="service">
        <h1>{{.Service}}</h1>
      </div>
      <div class="concept">
        <h2>It is an application that changes your seat to something nice.</h2>
      </div>
      <div class="message">
        <div>
          <p>Hold past seat information and carry out seat replacement without duplication.
          </p>
        </div>
        <div>
          <p>You can also browse past seat information.</p>
        </div>
      </div>
      <div class="generate">
        <h2><a href="./gen" style="color:var(--white)">fresh our seat ></a></h2>
      </div>
    </div>
    <div class="foot">
      <p class="copyright">copyright © 2019 Takahito Sueda terfno All Rights Reserved.</p>
    </div>
  </body>

</html>
