$(function() {
    $("select#Building").hide();
    $("select#Battery").hide();
    $("select#Column").hide();
    $("select#Elevator").hide();

    console.log("i am working")
    if ($("select#Building").val() == "") {
        $("select#Battery option").remove();
        var row = "<option value=\"" + "" + "\">" + "Battery" + "</option>";
        $(row).appendTo("select#Battery");
    }
    $("select#Customer").change(function() {
        $("select#Battery").hide();
        $("select#Column").hide();
        $("select#Elevator").hide();
        console.log("customer is changing")
        var id_value_string = $(this).val();
        if (id_value_string == "") {
            $("select#Building option").remove();
            var row = "<option value=\"" + "" + "\">" + "Building" + "</option>";
            $(row).appendTo("select#Building");
        } else {
      // Send the request and update course dropdown
            console.log("before ajax "+ id_value_string)

            $.ajax({
                dataType: "json",
                method: 'GET',
                cache: false,
                url: '/get_building_by_customer/' + id_value_string,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) {
                    // Clear all options from course select
                    $("select#Building option").remove();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Building" + "</option>";
                    $(row).appendTo("select#Building");
                    // Fill course select
                    $.each(data, function(i, j) {
                    row = "<option value=\"" + j.id + "\">" + j.id + j.adm_contact_full_name + "</option>";
                    console.log(row)
                    $(row).appendTo("select#Building");
                    $("select#Building").show();
                    });
                }
            });
        }
    });

    $("select#Building").change(function() {
        $("select#Column").hide();
        $("select#Elevator").hide();
        console.log("building is changing")
        var id_value_string = $(this).val();
        if (id_value_string == "") {
            $("select#Battery option").remove();
            var row = "<option value=\"" + "" + "\">" + "Battery" + "</option>";
            $(row).appendTo("select#Battery");
        } else {
      // Send the request and update course dropdown
            console.log("before ajax "+ id_value_string)

            $.ajax({
                dataType: "json",
                method: 'GET',
                cache: false,
                url: '/get_batterie_by_building/' + id_value_string,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) {
                    // Clear all options from course select
                    $("select#Battery option").remove();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Battery" + "</option>";
                    $(row).appendTo("select#Battery");
                    // Fill course select
                    $.each(data, function(i, j) {
                    row = "<option value=\"" + j.id + "\">" + j.id + "</option>";
                    console.log(row)
                    $(row).appendTo("select#Battery");
                    $("select#Battery").show();
                    });
                }
            });
        }
    });

    $("select#Battery").change(function() {
        $("select#Elevator").hide();
        console.log("battery is changing")
        var id_value_string = $(this).val();
        if (id_value_string == "") {
            $("select#Column option").remove();
            var row = "<option value=\"" + "" + "\">" + "Column" + "</option>";
            $(row).appendTo("select#Column");
        } else {
      // Send the request and update course dropdown
            console.log("before ajax "+ id_value_string)

            $.ajax({
                dataType: "json",
                method: 'GET',
                cache: false,
                url: '/get_column_by_batterie/' + id_value_string,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) {
                    // Clear all options from course select
                    $("select#Column option").remove();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Column" + "</option>";
                    $(row).appendTo("select#Column");
                    // Fill course select
                    $.each(data, function(i, j) {
                    row = "<option value=\"" + j.id + "\">" + j.id + "</option>";
                    console.log(row)
                    $(row).appendTo("select#Column");
                    $("select#Column").show();
                    });
                }
            });
        }
    });

    $("select#Column").change(function() {
        console.log("Column is changing")
        var id_value_string = $(this).val();
        if (id_value_string == "") {
            $("select#Elevator option").remove();
            var row = "<option value=\"" + "" + "\">" + "Elevator" + "</option>";
            $(row).appendTo("select#Elevator");
        } else {
      // Send the request and update course dropdown
            console.log("before ajax "+ id_value_string)

            $.ajax({
                dataType: "json",
                method: 'GET',
                cache: false,
                url: '/get_elevator_by_column/' + id_value_string,
                timeout: 5000,
                error: function(XMLHttpRequest, errorTextStatus, error) {
                    alert("Failed to submit : " + errorTextStatus + " ;" + error);
                },
                success: function(data) {
                    // Clear all options from course select
                    $("select#Elevator option").remove();
                    //put in a empty default line
                    var row = "<option value=\"" + "" + "\">" + "Elevator" + "</option>";
                    $(row).appendTo("select#Elavator");
                    // Fill course select
                    $.each(data, function(i, j) {
                    row = "<option value=\"" + j.id + "\">" + j.id + "</option>";
                    console.log(row)
                    $(row).appendTo("select#Elevator");
                    $("select#Elevator").show();
                    });
                }
            });
        }
    });
 
});