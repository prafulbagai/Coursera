$(function(){
	$( '#search' ).autocomplete({
		source: course_list
	});

	$('#search').keyup(function(e){
		if(e.keyCode == 13){
			$(this).trigger('enterKey');
		}
	});

	$('#search').bind('enterKey',function(e){
		search_val = $(this).val()
		ajax_request('course',search_val)
	});

	$('.category').on('change',function(){
		var category_list = $('.category:checked').map(function() {
		    return this.id;
		}).get();

		if (category_list == ''){
			$('#all_categories').prop('checked', true);
		}
		else{
			$('#all_categories').prop('checked', false);
		}
		ajax_request('category',category_list)
	});

	$('.language').on('change',function(){
		var language_list = $('.language:checked').map(function() {
		    return this.id;
		}).get();

		if (language_list == ''){
			$('#all_languages').prop('checked', true);
		}
		else{
			$('#all_languages').prop('checked', false);
		}
		ajax_request('language',language_list)
	});
});


function ajax_request(filter,search_val ){
	$.ajax({
		dataType: 'json',
		type : 'POST',
		url: '',
		data : { 'filter' : filter , 'search_val' : search_val},
		success : function(result){
			$("#courses").empty()
			var text = ""
			for (i = 0; i< result.length; i++){
				text += "<div class='row-fluid'>" +
							"<div class='span2'>" + 
								"<img src='/static/img/group10/" + result[i][0] + "'>" + 
							"</div>"+

							"<div class='span8'>" +
								"<a href='" + result[i][1] + "'>" + result[i][2] + "</a><br>" + 
								"<a href='/course/" + result[i][3] + "'>" + result[i][4] + "</a><br>" +
								"With "
				for (j = 0; j < result[i][7].length; j++){
					text += "<a href='/instructors/" + result[i][7][j][1] + "'>" + result[i][7][j][0] + "</a> ,"
				}

				text += "</div>" + 
							"<div class='span2'>" +
							 	result[i][5] + "<br>" + result[i][6] + 
						"</div>" + 
					"</div>" + 
					"<hr>"
			}

			$("#courses").html(text)
		}
	});
}