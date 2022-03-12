// // リクエストパラメータを作る
// const apiKey = 'AIzaSyAJCDSQx3tpg2O0Axt2PrKwH9oYfcpm_Rc';
// const cx = 'fee06ffd8f22fe8d1';
// const keyword = '鉄分 レシピ';
// const url = `https://www.googleapis.com/customsearch/v1?key=${apiKey}&cx=${cx}&q=${keyword}`;
// console.log(url);

// const app = new Vue({
//     el: '#recipe',
//     data: {
//       items: [],
//     },
//     created() {
//       fetch(url)
//       .then((response) => response.json())
//       .then((data) =>{
//         this.items = data.items;
        
//       });
//     }
//   })