tell application "Evernote"

	-- �N�G�������s���A���ʂƂ��č쐬���ꂽ�e�m�[�g�𑀍삷��
	-- �N�G���\���̏ڍׂɂ��ẮA
	-- Evernote API �̊T�v�ihttp://www.evernote.com/about/developer/api/�j�̕t�^ C ���Q��
	set notebook1 to create notebook "AppleScriptNotebook1"
	set note1 to create note with text "An apple is a fruit" notebook notebook1
	set note2 to create note with text "An Apple is a computer" notebook notebook1
	set note3 to create note with text "An orange is a fruit" notebook notebook1
	set note4 to create note with text "An Amiga is a computer" notebook notebook1
	set tag1 to make tag with properties {name:"AppleScriptTag1"}
	
	set matches to find notes "notebook:AppleScriptNotebook1 apple"
	assign tag1 to matches
	
	-- �N���[���A�b�v
	delete tag1
	delete notebook1
	
end tell
