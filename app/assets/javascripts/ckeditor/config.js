CKEDITOR.config.autoParagraph = false;
CKEDITOR.editorConfig = function( config )
{
    config.toolbar = 'Small';

    config.toolbar_Small =
        [
            { name: 'basicstyles', items : [ 'Source','Bold','Italic','Strike','-','Link','Unlink' ] },
        ];
};