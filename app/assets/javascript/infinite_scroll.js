numberMin = 11
numberMax = 14
function logWhenScrolledToBottom() {
  let posts = document.querySelector("body")

  postsScrollPosition = posts.scrollTop
  postsScrollHeight = posts.scrollHeight
  postsContainerHeight = posts.offsetHeight

  if ((window.scrollY + window.innerHeight) == postsScrollHeight) {
    fetch(`/posts`)
    .then(response => response.text())
    .then(data => {
      let tempElement = document.createElement('div');

      postsContainer = document.querySelector(".gallery-grid")

      tempElement.innerHTML = data.trim();
      tempElement.querySelectorAll(`div:nth-child(n+${numberMin}):nth-child(-n+${numberMax})`).forEach((a)=> {
        postsContainer.innerHTML += a.innerHTML;
        reSizeGridElements()
        addEventListenerToPosts()
      }
    )
    numberMax += 4;
    numberMin += 4;
    })
    .catch(error => console.error(error));
  }
}
document.addEventListener("scroll", logWhenScrolledToBottom);
