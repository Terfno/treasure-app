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
        <h1>INTER MEDIUS</h1>
      </div>
    </div>
    <div style="
    background: var(--gradient_b);
    height: 80vh;
    width: 100vw;
    ">
      <div style="
      color: var(--white);
      font-family: 'Oswald', sans-serif;
      ">
        <h1>{{.Service}}</h1>
      </div>
      <div style="
      color: var(--white);
      font-family: 'Roboto', sans-serif;
      font-weight: 300;
      ">
        <h2>It is an application that changes your seat to something nice.</h2>
      </div>
      <div style="
      color: var(--white);
      font-family: 'Roboto', sans-serif;
      font-weight: 100;">
        <p>Hold past seat information and carry out seat replacement without duplication.
        </p>
      </div>
      <div style="
      color: var(--white);
      font-family: 'Roboto', sans-serif;
      font-weight: 100;">
        <p>You can also browse past seat information.</p>
      </div>
      <div style="
      color: var(--white);
      font-family: 'Quicksand', sans-serif;
      font-weight: 300;">
        <h3>{{.data_1}}</h3>
        <h3>{{.data_2}}</h3>
        <h3>{{.data_3}}</h3>
      </div>
    </div>
    <div style="
    position: relative;
    height: 10vh;
    widows: 100vw;
    font-family: 'Josefin Sans', sans-serif;
    font-weight: 100;
    ">
      <p style="
      position:absolute;
      bottom: 0%;
      width: 100%;
      text-align: center;
      ">copyright © 2019 Takahito Sueda terfno All Rights Reserved.</p>
    </div>
  </body>

</html>
