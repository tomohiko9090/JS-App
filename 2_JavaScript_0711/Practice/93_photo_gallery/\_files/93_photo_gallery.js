function chgImg(filename){
  photo_preview.src = filename;
}

let photo_preview = document.querySelector("#photo_preview");

let photo1 = document.querySelector("#photo1");
let photo2 = document.querySelector("#photo2");
let photo3 = document.querySelector("#photo3");
let photo4 = document.querySelector("#photo4");
let photo5 = document.querySelector("#photo5");

photo1.addEventListener("mouseover", function(){chgImg("93_photo_gallery/Shuri_Castle.webp")});
photo2.addEventListener("mouseover", function(){chgImg("93_photo_gallery/manzamou.webp")});
photo3.addEventListener("mouseover", function(){chgImg("93_photo_gallery/kudakazima.webp")});
photo4.addEventListener("mouseover", function(){chgImg("93_photo_gallery/gyokusenndo.webp")});
photo5.addEventListener("mouseover", function(){chgImg("93_photo_gallery/bise_fukuginamiki.webp")});

