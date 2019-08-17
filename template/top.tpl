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

      h1 {
        font-size: 35pt;
      }

      h2 {
        font-size: 23pt;
      }

      h3 {
        font-size: 20pt;
      }

      p {
        font-size: 13pt;
      }

      body {
        overflow: hidden;
        margin: 0%;
      }

      header {
        height: 10vh;
        width: 100vw;
      }

      footer {
        height: 10vh;
        width: 100vw;
      }

      .logo {
        color: var(--black);
        font-family: 'Josefin Sans', sans-serif;
        font-weight: 100;
      }

      .menu {
        color: var(--black);
        font-family: 'Roboto', sans-serif;
        font-weight: 100;
      }

      .mid {
        background: var(--gradient_b);
        height: 80vh;
        width: 100vw;
      }

      .fresheat {
        color: var(--white);
        font-family: 'Oswald', sans-serif;
      }

      .greet {
        color: var(--white);
        font-family: 'Roboto', sans-serif;
        font-weight: 300;
      }

      .freshbutton {
        color: var(--white);
        font-family: 'Quicksand', sans-serif;
        font-weight: 300;
      }

    </style>
  </head>

  <body>
    <header>
      headerだお
    </header>
    <div class="mid">
      <div class="fresheat">
        <h1>{{.Service}}</h1>
      </div>
      <div class="greet">
        <h2>It is an application that changes your seat to something nice.</h2>
      </div>
      <div>
        <p style="color: var(--white)">Hold past seat information and carry out seat replacement without duplication.</p>
      </div>
      <div>
        <p style="color: var(--white)">You can also browse past seat information.</p>
      </div>
      <div>
        <h3>{{.data}}</h3>
      </div>

    </div>
    <footer>
      footerだお
    </footer>
  </body>

</html>
