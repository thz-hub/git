!function(t){var e={};function __webpack_require__(i){if(e[i])return e[i].exports;var r=e[i]={i:i,l:!1,exports:{}};return t[i].call(r.exports,r,r.exports,__webpack_require__),r.l=!0,r.exports}__webpack_require__.m=t,__webpack_require__.c=e,__webpack_require__.d=function(t,e,i){__webpack_require__.o(t,e)||Object.defineProperty(t,e,{enumerable:!0,get:i})},__webpack_require__.r=function(t){"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(t,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(t,"__esModule",{value:!0})},__webpack_require__.t=function(t,e){if(1&e&&(t=__webpack_require__(t)),8&e)return t;if(4&e&&"object"==typeof t&&t&&t.__esModule)return t;var i=Object.create(null);if(__webpack_require__.r(i),Object.defineProperty(i,"default",{enumerable:!0,value:t}),2&e&&"string"!=typeof t)for(var r in t)__webpack_require__.d(i,r,function(e){return t[e]}.bind(null,r));return i},__webpack_require__.n=function(t){var e=t&&t.__esModule?function getDefault(){return t.default}:function getModuleExports(){return t};return __webpack_require__.d(e,"a",e),e},__webpack_require__.o=function(t,e){return Object.prototype.hasOwnProperty.call(t,e)},__webpack_require__.p="",__webpack_require__(__webpack_require__.s=8)}([,,,,,,,,function(t,e,i){var r=i(9),n=i(10),o=i(11);$app_define$("@app-component/detail",[],(function(t,e,i){o(i,e,t),e.__esModule&&e.default&&(i.exports=e.default),i.exports.template=r,i.exports.style=n})),$app_bootstrap$("@app-component/detail",void 0,void 0)},function(t,e){t.exports={attr:{},type:"div",classList:["container"],children:[{attr:{value:function(){return this.title}},type:"text",classList:["title"]},{attr:{},type:"div",classList:["centerAre"],children:[{attr:{src:function(){return this.imgUrl}},type:"image",classList:["movieImg"]},{attr:{},type:"div",classList:["centerRight"],children:[{attr:{value:function(){return this.movieName}},type:"text",classList:["movieName"]},{attr:{},type:"div",classList:["movieType"],children:[{attr:{value:function(){return this.movieType}},type:"text",classList:["rightText"]},{attr:{value:function(){return this.type}},type:"text",classList:["rightText"]}]},{attr:{},type:"div",classList:["actor"],children:[{attr:{value:function(){return this.actors}},type:"text",classList:["actorText"]},{attr:{},type:"list",classList:["actorsImg"],children:[{attr:{},type:"list-item",repeat:function(){return this.actorsImg},children:[{attr:{src:function(){return this.$item}},type:"image",classList:["actors"]}]}]}]},{attr:{src:"/common/images/like.png"},type:"image",classList:["likeImg"]}]}]},{attr:{},type:"div",classList:["rate"],children:[{attr:{src:"/common/images/rating.png"},type:"image",classList:["rateImg"]},{attr:{src:"/common/images/rating.png"},type:"image",classList:["rateImg"]},{attr:{src:"/common/images/rating.png"},type:"image",classList:["rateImg"]},{attr:{src:"/common/images/rating.png"},type:"image",classList:["rateImg"]},{attr:{src:"/common/images/rating1.png"},type:"image",classList:["rateImg"]},{attr:{value:function(){return this.rating}},type:"text",classList:["rating"]}]},{attr:{},type:"div",classList:["story"],children:[{attr:{value:function(){return this.storyTitle}},type:"text",classList:["storyTitle"]},{attr:{value:function(){return this.introduction}},type:"text",classList:["storyContent"],style:{maxLines:function(){return this.maxLinesL}}},{attr:{show:function(){return this.isShow},value:function(){return this.expressText}},type:"button",classList:["express"],onBubbleEvents:{click:"showContent"}}]},{attr:{},type:"div",classList:["stills"],children:[{attr:{value:function(){return this.stillsTitle}},type:"text",classList:["stillsTitle"]},{attr:{},type:"list",classList:["stillsImg"],children:[{attr:{},type:"list-item",repeat:function(){return this.actorsImg},children:[{attr:{src:function(){return this.$item}},type:"image",classList:["stillsImgList"]}]}]}]}]}},function(t,e){t.exports={".container":{flexDirection:"column",justifyContent:"center",alignItems:"center",backgroundColor:"#445164",paddingBottom:"70px"},".title":{fontSize:"20px",justifyContent:"center"},".centerAre":{flexDirection:"row",marginTop:"15px"},".centerLeft":{flexDirection:"column",justifyContent:"center",marginLeft:"10px"},".movieImg":{height:"200px",width:"260px",marginTop:"10px",marginLeft:"20px",objectFit:"fill",borderBottomLeftRadius:"20px",borderBottomRightRadius:"20px",borderTopLeftRadius:"20px",borderTopRightRadius:"20px"},".centerRight":{flexDirection:"column",justifyContent:"center",marginLeft:"15px"},".movieName":{width:"140px",marginLeft:"50px",color:"#000000",fontSize:"18px"},".rightText":{fontSize:"15px",marginTop:"15px",color:"#FFB4B7B3"},".actorText":{fontSize:"15px",color:"#FFB4B7B3"},".actor":{marginTop:"5px",flexDirection:"column"},".actorsImg":{width:"180px",height:"60px",marginTop:"5px",objectFit:"cover",flexDirection:"row"},".actors":{width:"60px",height:"60px"},".likeImg":{marginLeft:"4px",marginTop:"45px",width:"30px",height:"30px",objectFit:"fill"},".rate":{marginTop:"15px",flexDirection:"row",marginLeft:"20px"},".rateImg":{width:"20px",height:"20px"},".rating":{width:"200px",fontSize:"20px",marginLeft:"10px",fontWeight:"300",color:"#FF9800"},".story":{flexDirection:"column"},".storyTitle":{marginLeft:"150px",color:"#000000",fontSize:"16px",marginTop:"25px",justifyContent:"center"},".storyContent":{backgroundColor:"#415165",color:"#000000",fontSize:"16px",marginTop:"5px",textOverflow:"ellipsis",marginLeft:"10px"},".express":{backgroundColor:"#f9efff",radius:"10px",marginLeft:"280px",marginTop:"5px",fontSize:"16px",paddingTop:"5px",paddingRight:"5px",paddingBottom:"5px",paddingLeft:"5px",textColor:"#000000"},".stills":{flexDirection:"column"},".stillsTitle":{marginLeft:"160px",fontSize:"16px",marginTop:"25px",color:"#000000"},".stillsImg":{marginLeft:"20px",marginRight:"20px",height:"100px",marginTop:"10px",objectFit:"cover",flexDirection:"row"},".stillsImgList":{width:"100px",height:"100px",marginTop:"10px",marginLeft:"1px",marginBottom:"10px"}}},function(t,e){t.exports=function(t,e,i){"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;e.default={data:{title:"电影",imgUrl:"",movieName:"",movieType:"电影类型：",type:"",actors:"主演",actorsImg:["common/images/movies_image13.jpg","common/images/movies_image12.jpg","common/images/movies_image11.jpg","common/images/movies_image10.jpg"],rating:"",storyTitle:"剧情简介",introduction:"",expressText:"更多",flag:!0,stillsTitle:"剧照",isShow:!1,maxLinesL:3},onInit:function onInit(){this.introduction.length>60&&(this.isShow=!0)},showContent:function showContent(){this.flag?(this.maxLinesL=10,this.expressText="收起",this.flag=!1):(this.maxLinesL=3,this.expressText="更多",this.flag=!0)}};var r=e.default||t.exports,n=["public","protected","private"];if(r.data&&n.some((function(t){return r[t]})))throw new Error("For VM objects, attribute data must not coexist with public, protected, or private. Please replace data with public.");r.data||(r.data={},r._descriptor={},n.forEach((function(t){var e=typeof r[t];if("object"===e)for(var i in r.data=Object.assign(r.data,r[t]),r[t])r._descriptor[i]={access:t};else"function"===e&&console.warn("For VM objects, attribute "+t+" value must not be a function. Change the value to an object.")})))}}]);