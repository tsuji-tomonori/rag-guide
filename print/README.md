# 印刷版PDF

章別Markdownを一冊へ統合し、LuaLaTeXでA4判の技術資料として組版します。
図版は元画像を変更せず、ビルド時にグレースケール版を生成します。

```sh
make -C print
```

生成物は `dist/rag-engineering-guide.pdf` です。
