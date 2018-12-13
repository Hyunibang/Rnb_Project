$(function(){
	$('#grade_submit').click(function(){
		var grade = $('#select_grade').val();
		$('#grade').val(grade);
		
		$("form[name='view']").submit();
	});
});