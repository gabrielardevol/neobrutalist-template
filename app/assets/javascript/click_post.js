
function showPost(post) {
  let id = post.dataset.post;
  console.log(id)

  title = post.querySelector(".gallery-grid-element-title").textContent;
  if (title !== null) {
    console.log(title);
  }

  superTitle = post.querySelector(".gallery-grid-element-supertitle").textContent;
  if (superTitle !== null) {
    console.log(superTitle);
  }

  secondTitle = post.querySelector(".gallery-grid-element-secondtitle").textContent;
  if (secondTitle !== null) {
    console.log(secondTitle);
  }

  body = post.querySelector(".gallery-grid-element-body").textContent;
  if (body !== null) {
    console.log(body);
  }

  photos = post.querySelectorAll(".gallery-grid-element-photo");
  if (photos !== null) {
    console.log(photos);
  }







  // fetch(`/posts`)
  //   .then(response => response.text())
  //   .then(data => {
  //     let tempElement = document.createElement('div');
  //     tempElement.innerHTML = data.trim();

  //     let post = tempElement.querySelector(`[data-post="${id}"]`);

  //     let title = post.querySelector(".gallery-grid-element-title")
  //     let superTitle = post.querySelector(".gallery-grid-element-supertitle")
  //     let secondTitle = post.querySelector(".gallery-grid-element-secondtitle")

  //     let showGrid = document.querySelector(".show-grid")
  //     let titleContainer = showGrid.querySelector(".title")
  //     let superTitleContainer = showGrid.querySelector(".super-title")
  //     let secondTitleContainer = showGrid.querySelector(".second-title")

  //     titleContainer.textContent = title.textContent
  //     superTitleContainer.textContent = superTitle.textContent
  //     secondTitleContainer.textContent = secondTitle.textContent
  //   }
  // )
}

function addEventListenerToPosts() {
  let post = document.querySelector("#post");
  let posts = document.querySelectorAll(".post");
  posts.forEach((post) => {
    post.addEventListener("click", expandHydePostShow)
    post.addEventListener("click", () => {
      showPost(post);
    })
  })
}

let initialGridWidth = document.querySelector(".gallery-grid").style.width;
function expandHydePostShow() {
  if (post.style.width == "0vw") {
    document.querySelector("#post").style.width = initialGridWidth
    document.querySelector(".gallery-grid").style.left = initialGridWidth
  } else { post.style.width = "0vw";
    document.querySelector(".gallery-grid").style.left = "0vw"
  }
}
addEventListenerToPosts()
