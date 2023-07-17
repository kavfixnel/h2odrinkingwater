<script>
  let url = `water${Math.floor(Math.random() * 10)}.jpeg`;
</script>

<svelte:head>
  <title>H2O Drinking Water</title>
  <meta name="robots" content="noindex nofollow" />
  <script
    defer=""
    data-domain="h2odrinkingwater.com"
    src="https://plausible.io/js/script.js"
  ></script>
</svelte:head>

<div class="center">
  <h1>Drink Water</h1>
  <img class="meme" src={url} alt="Water meme" />
</div>

<a href="https://github.com/kavfixnel/h2odrinkingwater">
  <img class="github-mark" src="github-mark.svg" alt="GitHub Mark" />
</a>

<style>
  .center {
    height: 100vh;
    width: 100vw;
    flex-direction: column;

    display: flex;
    justify-content: center;
    align-items: center;
  }

  img.meme {
    max-width: 400px;
    max-height: 400px;
  }

  img.github-mark {
    position: absolute;
    bottom: 0;
    left: 0;

    height: 2em;
    margin: 1em;
    opacity: 0.5;
  }
</style>
