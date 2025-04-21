/* global $ */
$(document).ready(function () {
    var $searchWidget = $("#search_widget");
    var $searchBox = $searchWidget.find("input[type=text]");
    var searchURL = $searchWidget.attr("data-search-controller-url");

    $.widget("prestashop.psBlockSearchAutocomplete", $.ui.autocomplete, {
        _renderItem: function (ul, product) {
            return $("<li>")
                .append(
                    $("<a>")
                        .append(
                            $("<span>")
                                .html(product.category_name)
                                .addClass("category")
                        )
                        .append($("<span>").html(" > ").addClass("separator"))
                        .append(
                            $("<span>").html(product.name).addClass("product")
                        )
                )
                .appendTo(ul);
        },
    });

    $searchBox.psBlockSearchAutocomplete({
        source: function (query, response) {
            $.post(
                searchURL,
                {
                    s: query.term,
                    resultsPerPage: 10,
                },
                null,
                "json"
            )
                .then(function (resp) {
                    response(resp.products);
                })
                .fail(response);
        },
        select: function (event, ui) {
            var url = ui.item.url;
            window.location.href = url;
        },
    });
});

const showSearchInput = () => {
    const searchBar = document.querySelector(".search-bar-wrapper");
    var header = document.querySelector("#header.navbar-header");
    if (searchBar && header) {
        header.insertAdjacentElement("afterend", searchBar);
    } else {
        console.log("Search bar or header not found");
    }
    searchBar.classList.toggle("active");
};
function closeSearchBar() {
    document.querySelector('.search-bar-wrapper').classList.remove('active');
}


