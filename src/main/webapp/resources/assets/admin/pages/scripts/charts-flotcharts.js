$(document).ready(function () {
	
	$.ajax({
		url : encodeURI("services/history/"),
		type : "GET",
		dataType : "json",
	});
	
    $.plot($("#chart_1_1"), dataset, options);
    $("#chart_1_1").UseTooltip();
});

//Files scanned
var data1 = [
    [gd(2015, 1, 2), 1674], [gd(2015, 1, 3), 1680], [gd(2015, 1, 4), 1643],
    [gd(2015, 1, 7), 1652], [gd(2015, 1, 8), 1640], [gd(2015, 1, 9), 1652],
    [gd(2015, 1, 10), 1652], [gd(2015, 1, 11), 1664], [gd(2015, 1, 14), 1660],
    [gd(2015, 1, 15), 1664], [gd(2015, 1, 16), 1673], [gd(2015, 1, 17), 1671],
    [gd(2015, 1, 18), 1682], [gd(2015, 1, 21), 1680], [gd(2015, 1, 22), 1685],
    [gd(2015, 1, 23), 1684], [gd(2015, 1, 24), 1670], [gd(2015, 1, 25), 1664],
    [gd(2015, 1, 28), 1652], [gd(2015, 1, 29), 1655], [gd(2015, 1, 30), 1659],
    [gd(2015, 1, 31), 1668]
];

//Finding count
var data2 = [
             [gd(2015, 1, 2), 1690], [gd(2015, 1, 3), 1696], [gd(2015, 1, 4), 1659],
             [gd(2015, 1, 7), 1668], [gd(2015, 1, 8), 1656], [gd(2015, 1, 9), 1668],
             [gd(2015, 1, 10), 1668], [gd(2015, 1, 11), 1680], [gd(2015, 1, 14), 1676],
             [gd(2015, 1, 15), 1680], [gd(2015, 1, 16), 1689], [gd(2015, 1, 17), 1687],
             [gd(2015, 1, 18), 1698], [gd(2015, 1, 21), 1696], [gd(2015, 1, 22), 1701],
             [gd(2015, 1, 23), 1700], [gd(2015, 1, 24), 1686], [gd(2015, 1, 25), 1680],
             [gd(2015, 1, 28), 1668], [gd(2015, 1, 29), 1671], [gd(2015, 1, 30), 1675],
             [gd(2015, 1, 31), 1684]
         ];



var dataset = [
    {
        label: "Found",
        data: data1,
        color: "#FF0000",
        points: { fillColor: "#FF0000", show: true },
        lines: { show: true }
    },
    {
        label: "Scanned",
        data: data2,
        xaxis:2,
        color: "#0062E3",
        points: { fillColor: "#0062E3", show: true },
        lines: { show: true }
    }
];

var dayOfWeek = ["Sun", "Mon", "Tue", "Wed", "Thr", "Fri", "Sat"];

var options = {
    series: {
        shadowSize: 5
    },
    xaxes: [{
        mode: "time",                
        tickFormatter: function (val, axis) {
            return dayOfWeek[new Date(val).getDay()];
        },
        color: "black",
        position: "top",
        axisLabel: "Day of week",
        axisLabelUseCanvas: true,
        axisLabelFontSizePixels: 12,
        axisLabelFontFamily: 'Verdana, Arial',
        axisLabelPadding: 5
    },
    {
        mode: "time",
        timeformat: "%m/%d",
        tickSize: [3, "day"],
        color: "black",        
        axisLabel: "Date",
        axisLabelUseCanvas: true,
        axisLabelFontSizePixels: 12,
        axisLabelFontFamily: 'Verdana, Arial',
        axisLabelPadding: 10
    }],
    yaxis: {        
        color: "black",
        tickDecimals: 0,
        axisLabel: "Total files scanned",
        axisLabelUseCanvas: true,
        axisLabelFontSizePixels: 12,
        axisLabelFontFamily: 'Verdana, Arial',
        axisLabelPadding: 5
    },
    legend: {
        noColumns: 0,
        labelFormatter: function (label, series) {
            return "<font color=\"white\">" + label + "</font>";
        },
        backgroundColor: "#000",
        backgroundOpacity: 0.9,
        labelBoxBorderColor: "#000000",
        position: "nw"
    },
    grid: {
        hoverable: true,
        borderWidth: 3,
        mouseActiveRadius: 50,
        backgroundColor: { colors: ["#ffffff", "#EDF5FF"] },
        axisMargin: 20
    }
};

function gd(year, month, day) {
    return new Date(year, month - 1, day).getTime();
}

var previousPoint = null, previousLabel = null;
var monthNames = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

$.fn.UseTooltip = function () {
    $(this).bind("plothover", function (event, pos, item) {
        if (item) {
            if ((previousLabel != item.series.label) || (previousPoint != item.dataIndex)) {
                previousPoint = item.dataIndex;
                previousLabel = item.series.label;
                $("#tooltip").remove();
                
                var x = item.datapoint[0];
                var y = item.datapoint[1];
                var date = new Date(x);
                var color = item.series.color;

                showTooltip(item.pageX, item.pageY, color,
                            "<strong>" + item.series.label + "</strong><br>"  +
                            (date.getMonth() + 1) + "/" + date.getDate() +
                            " : <strong>" + y + "</strong> (files)");
            }
        } else {
            $("#tooltip").remove();
            previousPoint = null;
        }
    });
};

function showTooltip(x, y, color, contents) {
    $('<div id="tooltip">' + contents + '</div>').css({
        position: 'absolute',
        display: 'none',
        top: y - 40,
        left: x - 120,
        border: '2px solid ' + color,
        padding: '3px',
        'font-size': '9px',
        'border-radius': '5px',
        'background-color': '#fff',
        'font-family': 'Verdana, Arial, Helvetica, Tahoma, sans-serif',
        opacity: 0.9
    }).appendTo("body").fadeIn(200);
}

