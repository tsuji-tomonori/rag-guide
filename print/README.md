# 印刷版PDF

章別Markdownを一冊へ統合し、LuaLaTeXでA4判の技術資料として組版します。
図版は元画像を変更せず、`docs`内で実際に参照されている画像だけを
ビルド時にグレースケール化します。同じ画像の複数回参照にも対応しています。

```sh
make -C print
```

生成物は `dist/rag-engineering-guide.pdf` です。
