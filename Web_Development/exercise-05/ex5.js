const pokemon = document.getElementById("pokemon-display");
const showMore = document.getElementById("show_More__pokemon");
const showMoreDetails = document.getElementById("fect_more_details");
const pokemonUrl = "https://pokeapi.co/api/v2/pokemon";

var nextURl = null;
var URL_info;
var searchArray = [];

const fetchPokemonDetails = async (pokemonurl) => {
  await fetch(pokemonurl)
    .then((response) => response.json())
    .then((data = {}) => {
      const { results, next } = data;
      URL_info = results;
      nextURl = next;
      results.forEach((pokemonData) => {
        fetchPokemonUrlDetails(pokemonData);
      });
    });
};

showMore.addEventListener("click", async () => {
  await fetchPokemonDetails(nextURl);
});

const fetchPokemonUrlDetails = async (data) => {
  const { url } = data;
  await fetch(url)
    .then((response) => response.json())
    .then((urlData) => {
      renderPokemonData(urlData);
    });
};

const renderPokemonData = (urlData) => {
  const { name, id, weight, base_experience } = urlData;
  let createPokemonContainer = document.createElement("div");
  let pokemonName = document.createElement("h2");
  pokemonName.innerText = `Name: ${name}`;

  let pokemonId = document.createElement("h4");
  pokemonId.innerText = `ID: ${id}`;

  let pokemonWeights = document.createElement("h4");
  pokemonWeights.innerText = `Weight: ${weight}`;

  let pokemonBase_experience = document.createElement("h4");
  pokemonBase_experience.innerText = `Base experience: ${base_experience}`;

  let pokemonImg = document.createElement("img");
  pokemonImg.id = "pokemonImg-hover";
  pokemonImg.src = urlData.sprites.front_default;

  let showPokemonDetails = document.createElement("button");
  showPokemonDetails.innerText = "Show More Details";

  showPokemonDetails.addEventListener("click", () => {
    showMoreDetails.srcdoc = `<!DOCTYPE html><html>
    <head>
    <style>
    #show_more__moves{
      font-size: 20px;
      color: black;
      text-align: center;
      }
    #more_moves{
      font-size: 10px;
      padding: 10px;
      background-color: black;
      border-radius: 5px;
      color: white;
      cursor: pointer;
      display: block;
      margin:auto;
    }
    </style>

    </head>
    <body>
    <img width="150" src="${
      urlData.sprites.front_default
    }"/><h2>Name: ${name}</h2> <h4>ID: ${id}</h4> <h4>Weight: ${weight}</h4> <h4>Base experience: ${base_experience}</h4> <h4> Type: ${
      urlData.types[0].type.name
    }</h4> <h4> Moves: ${urlData.moves[0].move.name}, ${
      urlData.moves[1].move.name
    }, ${urlData.moves[2].move.name}, ${urlData.moves[3].move.name}, ${
      urlData.moves[4].move.name
    }</h4>
      <p id="show_more__moves"></p>
      <button onclick="pokemonMoves()" id="more_moves">Show More Moves</button>
        <script>
        const pokemonMoves = () => {
          show_more__moves.innerHTML= "${urlData["moves"]
            .map((element) =>  element.move.name)
            .slice(5,)
            .join(", ")}";
        }
        let showMore = false;
        let hideMore = false;
        let showLess = document.getElementById("more_moves")
        showLess.addEventListener("click", ()=>{
          showMore = !showMore;
          document.getElementById("show_more__moves").style.display = showMore ? "block" : "none";
          if(hideMore){
            showLess.textContent = "Show More Moves";
            hideMore = false;
          }else{
            showLess.textContent = "show less";
            hideMore = true;
          }
        });
        
        </script>
    </body>
    </html>`;
  });

  pokemonImg.addEventListener("mouseout", () => pokemonImg.src = urlData.sprites.front_default);
  pokemonImg.addEventListener("mouseover", () => pokemonImg.src = urlData.sprites.back_default);

  createPokemonContainer.append(
    pokemonImg,
    pokemonName,
    pokemonId,
    pokemonWeights,
    pokemonBase_experience,
    showPokemonDetails
  );
  pokemon.appendChild(createPokemonContainer);
};

const searchPokemonName = () => {
  let searchPokemon = document.getElementById("search-pokemon").value;
  let searchArray = URL_info.filter((element) =>
    element.name.includes(searchPokemon)
  );
  if (pokemon.innerHTML == "") {
    pokemon.innerHTML = `<h1>No results found</h1>`;
  } else {
    pokemon.innerHTML = "";
    searchArray.forEach((element) => {
      fetchPokemonUrlDetails(element);
    });
  }
};

const sortPokemon = (value) => {
  let result = Array.from(pokemon.children).sort(
    (x, y) =>
      String(x.children[value].innerText).split(":")[1] -
      String(y.children[value].innerText).split(":")[1]
  );
  pokemon.replaceChildren(...result);
};

const SortFunction = () => {
  let SortValue = document.getElementById("sorting").value;
  switch (SortValue) {
    case "1":
      sortPokemon(2);
      break;
    case "2":
      sortPokemon(3);
      break;
    case "3":
      sortPokemon(4);
      break;
    default:
      console.log("Hello");
  }
};

fetchPokemonDetails(pokemonUrl);
