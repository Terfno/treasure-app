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
        height: 10vh;
        widows: 100vw;
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
        background: var(--gradient_b);
        height: 80vh;
        width: 100vw;
      }

      .service {
        color: var(--white);
        font-family: 'Oswald', sans-serif;
      }

      .concept {
        color: var(--white);
        font-family: 'Roboto', sans-serif;
        font-weight: 300;
      }

      .message {
        color: var(--white);
        font-family: 'Roboto', sans-serif;
        font-weight: 100;
      }

      .foot {
        position: relative;
        height: 10vh;
        widows: 100vw;
        font-family: 'Josefin Sans', sans-serif;
        font-weight: 100;
      }

      .copyright {
        position: absolute;
        bottom: 0%;
        width: 100%;
        text-align: center;
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
        <p>Hold past seat information and carry out seat replacement without duplication.
        </p>
      </div>
      <div class="message">
        <p>You can also browse past seat information.</p>
      </div>
    </div>
    <div class="foot">
      <p class="copyright">copyright © 2019 Takahito Sueda terfno All Rights Reserved.</p>
    </div>
  </body>

</html>
