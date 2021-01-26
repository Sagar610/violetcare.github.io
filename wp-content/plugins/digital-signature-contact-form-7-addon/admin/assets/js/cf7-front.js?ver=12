var esigCf7 = {
    setCookie: function (cname, cvalue, exdays) {
        var d = new Date();
        d.setTime(d.getTime() + (exdays * 1000));
        var expires = "expires=" + d.toUTCString();
        document.cookie = cname + "=" + cvalue + "; " + expires;
    },
    getCookie: function (name) {
        var pattern = RegExp(name + "=.[^;]*")
        matched = document.cookie.match(pattern)
        if (matched) {
            var cookie = matched[0].split('=')
            return cookie[1]
        }
        return false
    },
    unsetCookie: function (name) {
        var d = new Date();
        d.setTime(d.getTime() - (5000 * 24 * 60 * 60 * 1000));
        var expires = "expires=" + d.toUTCString();
        //document.cookie = name + "=" + +"; " + expires;
        document.cookie = name + "=''; " + expires;
    }
};
(function ($) {



    document.addEventListener('wpcf7mailsent', function (event) {
        var url = esigCf7.getCookie('esig-cf7-redirect');
        if (url) {
           // esigCf7.unsetCookie('esig-cf7-redirect');
            location = decodeURIComponent(url);
        }
    }, false);


})(jQuery);

