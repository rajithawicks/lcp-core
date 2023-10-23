using Core;

context CA {
    @title : 'Message Class Text'
    entity MessageClassText {
            @title : 'Class Id'
        key CLASSID       : Core.ClassIdT;

            @title : 'Message Number'
        key MESSAGENUMBER : Core.MessageNumberT;

            @title : 'Language Key'
        key LANGUAGEKEY   : Core.LanguageKeyT;

            @title : 'Text'
            TEXT          : Core.MessageTextT;
    }

    @title : 'Message Type'
    entity MessageType {
            @title : 'Message Type Id'
        key MESSAGETYPEID : Core.MessageTypeIdT;

            @title : 'Description'
            DESCRIPTION   : Core.DescriptionT;
    }

    @title : 'Status'
    entity Status {
            @title : 'Status Id'
        key STATUSID    : Core.StatusIdT;

            @title : 'Description'
            DESCRIPTION : Core.DescriptionT;
    }
};