<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/12
  Time: 22:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery/jquery-1.8.3.js"></script>
    <script>
        var grid;
        function bbcfun(){
            var url = '/crawler/bbc.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage1.shtml',
                    checkbox: true
                })
                layer.msg('数据库正在更新');

            } else {
                layer.msg('数据库更新失败');
            }
        }

        function boxunfun(){
            var url = '/crawler/boxun.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage2.shtml',
                    checkbox: true
                })
                layer.msg('博讯网数据库正在更新');

            } else {
                layer.msg('博讯网数据库更新失败');
            }
        }

        function cnnfun(){
            var url = '/crawler/cnn.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage3.shtml',
                    checkbox: true
                })
                layer.msg('美国CNN数据库正在更新');

            } else {
                layer.msg('美国CNN数据库更新失败');
            }
        }

        function israelfun(){
            var url = '/crawler/israel.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage4.shtml',
                    checkbox: true
                })
                layer.msg('以色列时报数据库正在更新');

            } else {
                layer.msg('以色列时报数据库更新失败');
            }
        }

        function jihadologyfun(){
            var url = '/crawler/jihadology.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage5.shtml',
                    checkbox: true
                })
                layer.msg('“圣战”视频综合网站数据库正在更新');

            } else {
                layer.msg('“圣战”视频综合网站数据库更新失败');
            }
        }

        function mirrorfun(){
            var url = '/crawler/mirror.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage6.shtml',
                    checkbox: true
                })
                layer.msg('英国明镜网数据库正在更新');

            } else {
                layer.msg('英国明镜网数据库更新失败');
            }
        }
         function mizzmiafun(){
             var url = '/crawler/mizzmia.shtml';
             var s = CommnUtil.ajax(url, {}, "json");
             if (s == "success") {
                 grid = lyGrid({//显示数据表
                     id: 'paging',
                     l_column: [ {
                         colkey: "title",
                         name: "title"
                     }, {
                         colkey: "url",
                         name: "url",
                         renderData: function (rowindex, data, rowdata, column) {
                             return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                         }
                     }
                     ],
                     jsonUrl: '/crawler/findByPage7.shtml',
                     checkbox: true
                 })
                 layer.msg('缅甸新闻网数据库正在更新');

             } else {
                 layer.msg('缅甸新闻网数据库更新失败');
             }
         }

        function reutersfun(){
            var url = '/crawler/reuters.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage8.shtml',
                    checkbox: true
                })
                layer.msg('英国路透网数据库正在更新');

            } else {
                layer.msg('英国路透网数据库更新失败');
            }
        }
        function rfafun(){
            var url = '/crawler/rfa.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage9.shtml',
                    checkbox: true
                })
                layer.msg('自由亚洲电台数据库正在更新');

            } else {
                layer.msg('自由亚洲电台数据库更新失败');
            }
        }
           function sitefun(){
               var url = '/crawler/site.shtml';
               var s = CommnUtil.ajax(url, {}, "json");
               if (s == "success") {
                   grid = lyGrid({//显示数据表
                       id: 'paging',
                       l_column: [ {
                           colkey: "title",
                           name: "title"
                       }, {
                           colkey: "url",
                           name: "url",
                           renderData: function (rowindex, data, rowdata, column) {
                               return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                           }
                       }
                       ],
                       jsonUrl: '/crawler/findByPage10.shtml',
                       checkbox: true
                   })
                   layer.msg('互联情报中心数据库正在更新');

               } else {
                   layer.msg('互联情报中心数据库更新失败');
               }
           }
          function swhfun(){
              var url = '/crawler/swh.shtml';
              var s = CommnUtil.ajax(url, {}, "json");
              if (s == "success") {
                  grid = lyGrid({//显示数据表
                      id: 'paging',
                      l_column: [ {
                          colkey: "title",
                          name: "title"
                      }, {
                          colkey: "url",
                          name: "url",
                          renderData: function (rowindex, data, rowdata, column) {
                              return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                          }
                      }
                      ],
                      jsonUrl: '/crawler/findByPage11.shtml',
                      checkbox: true
                  })
                  layer.msg('世维会官网数据库正在更新');

              }
              else {
                  layer.msg('世维会官网数据库更新失败');
              }
          }
           function syrianewsfun(){
               var url = '/crawler/syrianews.shtml';
               var s = CommnUtil.ajax(url, {}, "json");
               if (s == "success") {
                   grid = lyGrid({//显示数据表
                       id: 'paging',
                       l_column: [ {
                           colkey: "title",
                           name: "title"
                       }, {
                           colkey: "url",
                           name: "url",
                           renderData: function (rowindex, data, rowdata, column) {
                               return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                           }
                       }
                       ],
                       jsonUrl: '/crawler/findByPage12.shtml',
                       checkbox: true
                   })
                   layer.msg('叙利亚新闻网数据库正在更新');

               } else {
                   layer.msg('叙利亚新闻网数据库更新失败');
               }
           }
            function uhrpfun(){
                var url = '/crawler/uhrp.shtml';
                var s = CommnUtil.ajax(url, {}, "json");
                if (s == "success") {
                    grid = lyGrid({//显示数据表
                        id: 'paging',
                        l_column: [ {
                            colkey: "title",
                            name: "title"
                        }, {
                            colkey: "url",
                            name: "url",
                            renderData: function (rowindex, data, rowdata, column) {
                                return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                            }
                        }
                        ],
                        jsonUrl: '/crawler/findByPage13.shtml',
                        checkbox: true
                    })
                    layer.msg('维吾尔人权项目数据库正在更新');

                } else {
                    layer.msg('维吾尔人权项目数据库更新失败');
                }
            }
        function heavyfun(){
            var url = '/crawler/heavy.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage14.shtml',
                    checkbox: true
                })
                layer.msg('民间新闻网站数据库正在更新');

            } else {
                layer.msg('民间新闻网站数据库更新失败');
            }
        }
        function latimesfun(){
            var url = '/crawler/latimes.shtml';
            var s = CommnUtil.ajax(url, {}, "json");
            if (s == "success") {
                grid = lyGrid({//显示数据表
                    id: 'paging',
                    l_column: [ {
                        colkey: "title",
                        name: "title"
                    }, {
                        colkey: "url",
                        name: "url",
                        renderData: function (rowindex, data, rowdata, column) {
                            return "<a href='javascript:void(0);' onclick=\"window.open('" + data +"','','scrollbars=yes,status =yes')\">" + data +"</a>";
                        }
                    }
                    ],
                    jsonUrl: '/crawler/findByPage15.shtml',
                    checkbox: true
                })
                layer.msg('美国洛杉矶时报数据库正在更新');

            } else {
                layer.msg('美国洛杉矶时报数据库更新失败');
            }
        }
        function allnewsfun(){
            bbcfun();
            boxunfun();
            cnnfun();
            israelfun();
            jihadologyfun();
            mirrorfun();
            mizzmiafun();
            reutersfun();
            rfafun();
            sitefun();
            swhfun();
            syrianewsfun();
            uhrpfun();
            heavyfun();
            latimesfun();
            layer.msg('全部更新完毕');
        }


    </script>
</head>
<body>
<%--<div id="position" style="width:300px;height:10px;margin-top: 295px; display:inline">--%>
    <%--<input id="bbc" type="button" class="button" value="bbc_news" />--%>
    <%--<input id="boxun" type="button" class="button" value="boxun_news" />--%>
    <%--<input id="cnn" type="button" class="button" value="cnn_news" />--%>
    <%--<input id="israel" type="button" class="button" value="israel_news" />--%>
    <%--<input id="jihadology" type="button" class="button" value="jihadology_news" />--%>
    <%--<input id="mirror" type="button" class="button" value="mirror_news" />--%>
    <%--<input id="mizzmia" type="button" class="button" value="mizzmia_news" />--%>
    <%--<input id="reuters" type="button" class="button" value="reuters_news" />--%>
    <%--<input id="rfa" type="button" class="button" value="rfa_news" />--%>
    <%--<input id="site" type="button" class="button" value="site_news" />--%>
    <%--<input id="swh" type="button" class="button" value="swh_news" />--%>
    <%--<input id="syrianews" type="button" class="button" value="syrianews_news" />--%>
    <%--<input id="uhrp" type="button" class="button" value="uhrp_news" />--%>
<%--</div>--%>
<div class="btn-group">
    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown"> 新闻 <span class="caret"></span>
    </button>
    <ul class="dropdown-menu" role="menu">

        <li onclick="boxunfun()"><a href="#">博讯网</a></li>
        <li onclick="cnnfun()"><a href="#">美国CNN</a></li>
        <li onclick="israelfun()"><a href="#">以色列时报</a></li>
        <li onclick="jihadologyfun()"><a href="#">“圣战”视频综合网站</a></li>
        <li onclick="mirrorfun()"><a href="#">英国明镜网</a></li>
        <li onclick="mizzmiafun()"><a href="#">缅甸新闻网</a></li>
        <li onclick="reutersfun()"><a href="#">英国路透网</a></li>
        <li onclick="rfafun()"><a href="#">自由亚洲电台</a></li>
        <li onclick="sitefun()"><a href="#">互联情报中心</a></li>
        <li onclick="swhfun()"><a href="#">世维会官网</a></li>
        <li onclick="syrianewsfun()"><a href="#">叙利亚新闻网</a></li>
        <li onclick="uhrpfun()"><a href="#">维吾尔人权项目</a></li>
        <li onclick="heavyfun()"><a href="#">民间新闻网站</a></li>
        <li onclick="latimesfun()"><a href="#">美国洛杉矶时报</a></li>
        <li onclick="allnewsfun()"><a href="#">一键刷新</a></li>
        <li class="divider"></li>
        <li><a href="#">Separated link</a></li>
    </ul>
</div>

<div class="table-respnsive">
    <div id = "paging" class = "pagclass"></div>
</div>
</body>
</html>
