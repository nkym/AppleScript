tell application "Evernote"

	-- クエリを実行し、結果として作成された各ノートを操作する
	-- クエリ構文の詳細については、
	-- Evernote API の概要（http://www.evernote.com/about/developer/api/）の付録 C を参照
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "An apple is a fruit" notebook notebook1
	set note2 to create note with text "An Apple is a computer" notebook notebook1
	set note3 to create note with text "An orange is a fruit" notebook notebook1
	set note4 to create note with text "An Amiga is a computer" notebook notebook1
	set tag1 to make tag with properties {name:"AppleScriptTag1"}
	
	set matches to find notes "notebook:AppleScriptNotebook1 apple"
	assign tag1 to matches
	
	-- クリーンアップ
	delete tag1
	delete notebook1
	
end tell
