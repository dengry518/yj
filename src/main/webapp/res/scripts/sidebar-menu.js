(function ($) {
    $.fn.sidebarMenu = function (options) {
        options = $.extend({}, $.fn.sidebarMenu.defaults, options || {});
        var target = $(this);
        if (options.data) {
            init(target, options.data);
        }
        else {
            if (!options.url) return;
            $.getJSON(options.url, options.param, function (data) {
                init(target, data);
            });
        }

        function init(target, data) {
            $.each(data, function (i, item) {
                var li = $('<li></li>');
                var a = $('<a></a>');
                var icon = $('<i></i>');
                icon.addClass('menu-icon').addClass(item.icon);
                var text = $('<span></span>');
                text.addClass('menu-text').text(item.text);
                a.append(icon);
                a.append(text);
                if (item.menus && item.menus.length > 0) {
                    a.attr('href', '#');
                    a.addClass('dropdown-toggle');
                    var arrow = $('<b></b>');
                    arrow.addClass('arrow').addClass('fa fa-angle-down');
                    a.append(arrow);
                    li.append(a);
                    var menus = $('<ul></ul>');
                    menus.addClass('submenu');
                    init(menus, item.menus);
                    li.append(menus);
                }
                else {
                    a.click(function () {
                        // debugger;
                        var li = $(this).parent();//当前点击的li
                        ul = li.parent().parent().parent();
                        ul.find('li').removeClass('active');
                        if (!li.parent().parent().hasClass('open')) {
                            ul.find('li').removeClass('open');
                            li.parent().parent().addClass('active open');
                        }
                        li.addClass('active');
                    });
                    a.attr('href', item.url);
                    a.attr('target', 'content')
                    li.append(a);
                }

                var b = $('<b class="arrow"></b>');
                li.append(b);
                target.append(li);
            });
        }


    }

    $.fn.sidebarMenu.defaults = {
        url: null,
        param: null,
        data: null
    };
})(jQuery);


