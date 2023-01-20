const pokemon = document.getElementById("pokemon-display");
const showMore = document.getElementById("show_More__pokemon");
const showMoreDetails = document.getElementById("fect_more_details");
let pokemon_url = "https://pokeapi.co/api/v2/pokemon";

var nextURl = null;
var URL_info;
var searchArray = [];

const fetchPokemonDetails = async (pokemonurl) => {
  await fetch(pokemonurl)
    .then((response) => response.json())
    .then((data = {}) => {
      let { results, next } = data;
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
  let { url } = data;
  
  await fetch(url)
    .then((response) => response.json())
    .then((urlData) => {
      renderPokemonData(urlData);
    });
};

const renderPokemonData = (urlData) => {
  let { name, id, weight, base_experience } = urlData;
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
    showMoreDetails.srcdoc = `<!DOCTYPE html><img width="150" src="${urlData.sprites.front_default}"/><h2>Name: ${name}</h2> <h4>ID: ${id}</h4> <h4>Weight: ${weight}</h4> <h4>Base experience: ${base_experience}</h4> <h4> Type: ${urlData.types[0].type.name}</h4> <p> Moves: ${urlData.moves[0].move.name}, ${urlData.moves[1].move.name}, ${urlData.moves[2].move.name}, ${urlData.moves[3].move.name}, ${urlData.moves[4].move.name}</p>`;
  });
  pokemonImg.addEventListener("mouseout", () => {
    pokemonImg.src = urlData.sprites.front_default;
  });
  pokemonImg.addEventListener("mouseover", () => {
    pokemonImg.src = urlData.sprites.back_default;
  });

  const sortedWeights = [...document.querySelectorAll(".cards")].sort(
    (x, y) =>
      x.childNodes[2].innerText.split(":")[1] -
      y.childNodes[2].innerText.split(":")[1]
  );
  console.log(sortedWeights);

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
  pokemon.innerHTML = "";
  searchArray.forEach((element) => {
    fetchPokemonUrlDetails(element);
  });
};
let x = document.getElementById("search-pokemon");
x.oninput = searchPokemonName;

const sortedWeights = () => {
  let result = Array.from(
    document.getElementById("pokemon-display").children
  ).sort((x, y) => {
    x = String(x.children[3].innerText).split(":")[1];
    y = String(y.children[3].innerText).split(":")[1];
    return x - y;
  });

  document.getElementById("pokemon-display").replaceChildren(...result);
};

const sortedBaseExperience = () => {
  let result = Array.from(
    document.getElementById("pokemon-display").children
  ).sort((x, y) => {
    x = String(x.children[4].innerText).split(":")[1];
    y = String(y.children[4].innerText).split(":")[1];
    return x - y;
  });
  document.getElementById("pokemon-display").replaceChildren(...result);
};

const sortedById = () => {
  let result = Array.from(
    document.getElementById("pokemon-display").children
  ).sort((x, y) => {
    x = String(x.children[2].innerText).split(":")[1];
    y = String(y.children[2].innerText).split(":")[1];
    return x - y;
  });
  document.getElementById("pokemon-display").replaceChildren(...result);
};

const SortFunction = () => {
  let SortValue = document.getElementById("sorting").value;  
  switch (SortValue) {
    case ("1"):
      sortedById();
      break;
    case ("2"):
      sortedWeights();
      break;
    case ("3"):
      sortedBaseExperience();
      break;
    default:
      console.log("Hello");
  }
};

let sortdata = document.getElementById("sorting");
sortdata.onchange = SortFunction;

fetchPokemonDetails(pokemon_url);
