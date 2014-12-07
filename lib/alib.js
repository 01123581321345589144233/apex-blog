function initCHKEditor(){
 CKEDITOR.stylesSet.add(
  "default",[
   {name:"SyntaxHighlighter",element:"pre",styles:{"background-color":"#EEEEEE",padding:"2px"},attributes:{"class":"brush:plain"}},
   {name:"Blue Title",element:"h3",styles:{color:"Blue"}},
   {name:"Red Title",element:"h3",styles:{color:"Red"}},
   {name:"Marker: Yellow",element:"span",styles:{"background-color":"Yellow"}},
   {name:"Marker: Green",element:"span",styles:{"background-color":"Lime"}},
   {name:"Big",element:"big"},{name:"Small",element:"small"},
   {name:"Typewriter",element:"tt"},{name:"Computer Code",element:"code"},
   {name:"Keyboard Phrase",element:"kbd"},{name:"Sample Text",element:"samp"},
   {name:"Variable",element:"var"},
   {name:"Deleted Text",element:"del"},
   {name:"Inserted Text",element:"ins"},
   {name:"Cited Work",element:"cite"},
   {name:"Inline Quotation",element:"q"},
   {name:"Language: RTL",element:"span",attributes:{dir:"rtl"}},
   {name:"Language: LTR",element:"span",attributes:{dir:"ltr"}},
   {name:"Image on Left",element:"img",attributes:{style:"padding: 5px; margin-right: 5px", border:"2",align:"left"}},
   {name:"Image on Right",element:"img",attributes:{style:"padding: 5px; margin-left: 5px",border:"2",align:"right"}},
   {name:"Borderless Table",element:"table",styles:{"border-style":"hidden","background-color":"#E6E6FA"}},
   {name:"Square Bulleted List",element:"ul",styles:{"list-style-type":"square"}}
  ]
 );
 CKEDITOR.config.entities_additional="#x23,#x27,#x2F";CKEDITOR.config.forcePasteAsPlainText=!0
}
function net_webhop_dbswh_max_item_length(){
 var lMaxLength  = this.action.attribute01*1,
     lMessage    = this.action.attribute02,
	 lStopSubmit = false
	 ;
 this.affectedElements.each(function(i){
  var lLabel = $.trim($('label[for="'+this.id+'"]').text());
  if($v(this).length>=lMaxLength){
   alert(lLabel+lMessage);
   lStopSubmit=true
  }
 });
 if(lStopSubmit){
  event.preventDefault()
 }
}