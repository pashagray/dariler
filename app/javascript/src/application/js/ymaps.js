import ymaps from "ymaps";
 
// Add drugstore
document.on("turbolinks:load", () => {
  ymaps
    .load('https://api-maps.yandex.ru/2.1/?lang=en_US')
    .then(maps => {
      const map = new maps.Map("add-drugstore-map", {
        center: [-8.369326, 115.166023],
        zoom: 7
      });
    })
    .catch(error => console.log('Failed to load Yandex Maps', error));
})
