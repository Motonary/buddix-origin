#存在しないリソースを参照しようとした時のエラー 404
 class CustomNotFound < Exception; end

 #サーバが「読み出し禁止」にしているコンテンツをブラウザが読み込もうとした時のエラー 403
 class CustomForbidden < Exception; end

 #ユーザ操作が不正の時のエラー 400
 class CustomClientError < Exception; end

 class FacebookRegistrationError < Exception; end
