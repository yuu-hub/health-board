const API_KEY = 'AIzaSyAJCDSQx3tpg2O0Axt2PrKwH9oYfcpm_Rc';

const parameters = $.param({
  method: 'google.search',
  api_key: API_KEY,
  text: '鉄分 レシピ', // 検索テキスト
  sort: 'interestingness-desc', // 興味深さ順
  per_page: 5, // 取得件数
  license: '4', // Creative Commons Attributionのみ
  extras: 'owner_name,license', // 追加で取得する情報
  format: 'json', // レスポンスをJSON形式に
  nojsoncallback: 1, // レスポンスの先頭に関数呼び出しを含めない
});
