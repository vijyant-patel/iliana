const thumbnails = document.querySelectorAll("#thumbs img");
const imageContainer = document.getElementById("imageContainer");
const images = imageContainer.querySelectorAll("img");

thumbnails.forEach((thumb, index) => {
  thumb.addEventListener("click", () => {
    thumbnails.forEach(t => t.classList.remove("active")); // remove from all
    thumb.classList.add("active"); // add to clicked
    images[index].scrollIntoView({
      behavior: "smooth",
      block: "nearest",
      inline: "start"
    });
  });
});

// Scroll listener to auto-highlight thumbnail
imageContainer.addEventListener("scroll", () => {
  let currentIndex = 0;
  const scrollTop = imageContainer.scrollTop;
  const containerHeight = imageContainer.clientHeight;

  images.forEach((img, index) => {
    const imgTop = img.offsetTop;
    if (scrollTop >= imgTop - containerHeight / 2) {
      currentIndex = index;
    }
  });

  thumbnails.forEach((thumb, i) => {
    thumb.classList.toggle("active", i === currentIndex);
  });
});




if (window.innerWidth <= 768) {
  
  const thumbnails = document.querySelectorAll("#thumbs img");
  const imageContainer = document.getElementById("imageContainer");
  const images = imageContainer.querySelectorAll("img");
  const dotsContainer = document.getElementById("dotsContainer");

  // Create dots based on number of images
  images.forEach((_, index) => {
    const dot = document.createElement("div");
    dot.classList.add("dot");
    if (index === 0) dot.classList.add("active");
    dotsContainer.appendChild(dot);
  });

  const dots = dotsContainer.querySelectorAll(".dot");

  // Thumbnail click → scroll and update dot
  thumbnails.forEach((thumb, index) => {
    thumb.addEventListener("click", () => {
      images[index].scrollIntoView({ behavior: "smooth", inline: "start" });
      updateActive(index);
    });
  });

  // Scroll → update active dot and thumbnail
  imageContainer.addEventListener("scroll", () => {
    let currentIndex = 0;
    const scrollLeft = imageContainer.scrollLeft;
    const containerWidth = imageContainer.clientWidth;

    images.forEach((img, index) => {
      const imgLeft = img.offsetLeft;
      if (scrollLeft >= imgLeft - containerWidth / 2) {
        currentIndex = index;
      }
    });

    updateActive(currentIndex);
  });

  function updateActive(index) {
    thumbnails.forEach(t => t.classList.remove("active"));
    thumbnails[index].classList.add("active");
    dots.forEach(d => d.classList.remove("active"));
    dots[index].classList.add("active");
  }


}
